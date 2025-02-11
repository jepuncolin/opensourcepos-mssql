<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once("Report.php");

abstract class Summary_report extends Report
{
	/**
	 * Private interface implementing the core basic functionality for all reports
	 */

	private function __common_select(array $inputs)
	{
		$where = '';

		if(empty($this->config->item('date_or_time_format')))
		{
			$where .= 'CONVERT(DATE,sale_time) BETWEEN ' . $this->db->escape($inputs['start_date']) . ' AND ' . $this->db->escape($inputs['end_date']);
		}
		else
		{
			$where .= 'sale_time BETWEEN ' . $this->db->escape(rawurldecode($inputs['start_date'])) . ' AND ' . $this->db->escape(rawurldecode($inputs['end_date']));
		}

		$decimals = totals_decimals();

		$sale_price = 'CASE WHEN sales_items.discount_type = ' . PERCENT
			. " THEN sales_items.quantity_purchased * sales_items.item_unit_price - ROUND(sales_items.quantity_purchased * sales_items.item_unit_price * sales_items.discount / 100, $decimals) "
			. 'ELSE sales_items.quantity_purchased * (sales_items.item_unit_price - sales_items.discount) END';

		$sale_cost = 'SUM(sales_items.item_cost_price * sales_items.quantity_purchased)';
		$sales_tax = "ISNULL(SUM(sales_items_taxes.tax), 0)";

		$cash_adjustment = 'ISNULL(SUM(payments.sale_cash_adjustment), 0)';


		if($this->config->item('tax_included'))
		{
			$sale_total = "ROUND(SUM($sale_price), $decimals) + $cash_adjustment";
			$sale_subtotal = "$sale_total - $sales_tax";

		}
		else
		{
			$sale_subtotal = "ROUND(SUM($sale_price), $decimals) + $cash_adjustment";
			$sale_total = "ROUND(SUM($sale_price), $decimals) + $sales_tax + $cash_adjustment";
		}

		// create a temporary table to contain all the sum of taxes per sale item
        /*
		$this->db->query('CREATE TEMPORARY TABLE IF NOT EXISTS ' . $this->db->dbprefix('sales_items_taxes_temp') .
			' (INDEX(sale_id), INDEX(item_id)) ENGINE=MEMORY
			(
				SELECT sales_items_taxes.sale_id AS sale_id,
					sales_items_taxes.item_id AS item_id,
					sales_items_taxes.line AS line,
					SUM(ROUND(sales_items_taxes.item_tax_amount,' . $decimals . ')) AS tax
				FROM ' . $this->db->dbprefix('sales_items_taxes') . ' AS sales_items_taxes
				INNER JOIN ' . $this->db->dbprefix('sales') . ' AS sales
					ON sales.sale_id = sales_items_taxes.sale_id
				INNER JOIN ' . $this->db->dbprefix('sales_items') . ' AS sales_items
					ON sales_items.sale_id = sales_items_taxes.sale_id AND sales_items.line = sales_items_taxes.line
				WHERE ' . $where . '
				GROUP BY sale_id, item_id, line
			)'
		);

		$this->db->query('CREATE TEMPORARY TABLE IF NOT EXISTS ' . $this->db->dbprefix('sales_payments_temp') .
			' (PRIMARY KEY(sale_id), INDEX(sale_id))
			(
				SELECT payments.sale_id AS sale_id,
					SUM(CASE WHEN payments.cash_adjustment = 0 THEN payments.payment_amount ELSE 0 END) AS sale_payment_amount,
					SUM(CASE WHEN payments.cash_adjustment = 1 THEN payments.payment_amount ELSE 0 END) AS sale_cash_adjustment,
					SUM(payments.cash_refund) AS sale_cash_refund,
					GROUP_CONCAT(CONCAT(payments.payment_type, " ", (payments.payment_amount - payments.cash_refund)) SEPARATOR ", ") AS payment_type
				FROM ' . $this->db->dbprefix('sales_payments') . ' AS payments
				INNER JOIN ' . $this->db->dbprefix('sales') . ' AS sales
					ON sales.sale_id = payments.sale_id
				WHERE ' . $where . '
				GROUP BY sale_id
			)'
		);
        ospos_sales_items_taxes_temp

        */
		$this->db->query(
			"   IF OBJECT_ID('".$this->db->dbprefix('sales_items_taxes_temp')."') IS NOT NULL DROP TABLE ".$this->db->dbprefix('sales_items_taxes_temp'). 
	        ' 
                SELECT sales_items_taxes.sale_id AS sale_id,
					sales_items_taxes.item_id AS item_id,
					sales_items_taxes.line AS line,
					SUM(ROUND(sales_items_taxes.item_tax_amount,' . $decimals . ')) AS tax INTO '.$this->db->dbprefix('sales_items_taxes_temp').
				' FROM ' . $this->db->dbprefix('sales_items_taxes') . ' AS sales_items_taxes
				INNER JOIN ' . $this->db->dbprefix('sales') . ' AS sales
					ON sales.sale_id = sales_items_taxes.sale_id
				INNER JOIN ' . $this->db->dbprefix('sales_items') . ' AS sales_items
					ON sales_items.sale_id = sales_items_taxes.sale_id AND sales_items.line = sales_items_taxes.line
				WHERE ' . $where . '
				GROUP BY sales_items_taxes.sale_id, sales_items_taxes.item_id, sales_items_taxes.line  '          
		);
        
		$this->db->query(
			"   IF OBJECT_ID('".$this->db->dbprefix('sales_payments_temp')."') IS NOT NULL DROP TABLE ".$this->db->dbprefix('sales_payments_temp'). 
			'	SELECT payments.sale_id AS sale_id,
					SUM(CASE WHEN payments.cash_adjustment = 0 THEN payments.payment_amount ELSE 0 END) AS sale_payment_amount,
					SUM(CASE WHEN payments.cash_adjustment = 1 THEN payments.payment_amount ELSE 0 END) AS sale_cash_adjustment,
					SUM(payments.cash_refund) AS sale_cash_refund,'.
					"STRING_AGG(CONCAT(payments.payment_type, ' ', (payments.payment_amount - payments.cash_refund)),',') AS payment_type INTO ".$this->db->dbprefix('sales_payments_temp').
				' FROM ' . $this->db->dbprefix('sales_payments') . ' AS payments
				INNER JOIN ' . $this->db->dbprefix('sales') . ' AS sales
					ON sales.sale_id = payments.sale_id
				WHERE ' . $where . '
				GROUP BY payments.sale_id '
		);
        
        
        
		$this->db->select("
				ISNULL($sale_subtotal, $sale_total) AS subtotal,
				$sales_tax AS tax,
				ISNULL($sale_total, $sale_subtotal) AS total,
				$sale_cost AS cost,
				(ISNULL($sale_subtotal, $sale_total) - $sale_cost) AS profit
		");
	}

	private function __common_from()
	{
		$this->db->from('sales_items AS sales_items');
		$this->db->join('sales AS sales', 'sales_items.sale_id = sales.sale_id', 'inner');
		$this->db->join('sales_items_taxes_temp AS sales_items_taxes',
			'sales_items.sale_id = sales_items_taxes.sale_id AND sales_items.item_id = sales_items_taxes.item_id AND sales_items.line = sales_items_taxes.line',
			'left outer');
		$this->db->join('sales_payments_temp AS payments', 'sales.sale_id = payments.sale_id', 'LEFT OUTER');

	}

	private function __common_where(array $inputs)
	{
		if(empty($this->config->item('date_or_time_format')))
		{
			$this->db->where('CONVERT(DATE,sales.sale_time) BETWEEN ' . $this->db->escape($inputs['start_date']) . ' AND ' . $this->db->escape($inputs['end_date']));
		}
		else
		{
			$this->db->where('sales.sale_time BETWEEN ' . $this->db->escape(rawurldecode($inputs['start_date'])) . ' AND ' . $this->db->escape(rawurldecode($inputs['end_date'])));
		}

		if($inputs['location_id'] != 'all')
		{
			$this->db->where('sales_items.item_location', $inputs['location_id']);
		}

		if($inputs['sale_type'] == 'complete')
		{
			$this->db->where('sales.sale_status', COMPLETED);
			$this->db->group_start();
				$this->db->where('sales.sale_type', SALE_TYPE_POS);
				$this->db->or_where('sales.sale_type', SALE_TYPE_INVOICE);
				$this->db->or_where('sales.sale_type', SALE_TYPE_RETURN);
			$this->db->group_end();
		}
		elseif($inputs['sale_type'] == 'sales')
		{
			$this->db->where('sales.sale_status', COMPLETED);
			$this->db->group_start();
				$this->db->where('sales.sale_type', SALE_TYPE_POS);
				$this->db->or_where('sales.sale_type', SALE_TYPE_INVOICE);
			$this->db->group_end();
		}
		elseif($inputs['sale_type'] == 'quotes')
		{
			$this->db->where('sales.sale_status', SUSPENDED);
			$this->db->where('sales.sale_type', SALE_TYPE_QUOTE);
		}
		elseif($inputs['sale_type'] == 'work_orders')
		{
			$this->db->where('sales.sale_status', SUSPENDED);
			$this->db->where('sales.sale_type', SALE_TYPE_WORK_ORDER);
		}
		elseif($inputs['sale_type'] == 'canceled')
		{
			$this->db->where('sales.sale_status', CANCELED);
		}
		elseif($inputs['sale_type'] == 'returns')
		{
			$this->db->where('sales.sale_status', COMPLETED);
			$this->db->where('sales.sale_type', SALE_TYPE_RETURN);
		}
	}

	/**
	 * Protected class interface implemented by derived classes where required
	 */

	abstract protected function _get_data_columns();

	protected function _select(array $inputs)	{ $this->__common_select($inputs); }
	protected function _from()					{ $this->__common_from(); }
	protected function _where(array $inputs)	{ $this->__common_where($inputs); }
	protected function _group_order()			{}

	/**
	 * Public interface implementing the base abstract class, 
	 * in general it should not be extended unless there is a valid reason 
	 * like a non sale report (e.g. expenses)
	 */

	public function getDataColumns()
	{
		return $this->_get_data_columns();
	}

	public function getData(array $inputs)
	{
		$this->_select($inputs);

		$this->_from();

		$this->_where($inputs);

		$this->_group_order();

		return $this->db->get()->result_array();
	}

	public function getSummaryData(array $inputs)
	{
		$this->__common_select($inputs);

		$this->__common_from();

		$this->_where($inputs);

		return $this->db->get()->row_array();
	}
}
?>
