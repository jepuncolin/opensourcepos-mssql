
--
-- SQLINES DEMO *** or table `ospos_app_config`
--

-- SQLINES FOR EVALUATION USE ONLY (14 DAYS)
CREATE TABLE ospos_app_config (
  [key] varchar(50) NOT NULL,
  value varchar(500) NOT NULL,
  PRIMARY KEY ([key])
) ;

--
-- SQLINES DEMO *** table `ospos_app_config`
--

INSERT INTO ospos_app_config ([key], value) VALUES
('address', '123 Nowhere street'),
('company', 'Open Source Point of Sale'),
('default_register_mode', 'sale'),
('default_tax_rate', '8'),
('default_tax_category', 'Standard'),
('email', 'changeme@example.com'),
('fax', ''),
('phone', '555-555-5555'),
('return_policy', 'Test'),
('timezone', 'America/New_York'),
('website', ''),
('company_logo', ''),
('tax_included', '0'),
('barcode_content', 'id'),
('barcode_type', 'Code39'),
('barcode_formats', '[]'),
('barcode_width', '250'),
('barcode_height', '50'),
('barcode_quality', '100'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_first_row', 'category'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_num_in_row', '2'),
('barcode_page_width', '100'),
('barcode_page_cellspacing', '20'),
('barcode_generate_if_empty', '0'),
('receipt_show_company_name', '1'),
('receipt_show_taxes', '0'),
('receipt_show_total_discount', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('invoice_enable', '1'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('line_sequence', '0'),
('recv_invoice_format', '{CO}'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale $INV'),
('invoice_default_comments', 'This is a default comment'),
('print_silently', '1'),
('print_header', '0'),
('print_footer', '0'),
('print_top_margin', '0'),
('print_left_margin', '0'),
('print_bottom_margin', '0'),
('print_right_margin', '0'),
('default_sales_discount', '0'),
('lines_per_page', '25'),
('dateformat', 'm/d/Y'),
('timeformat', 'H:i:s'),
('currency_symbol', '$'),
('number_locale', 'en_US'),
('thousands_separator', '1'),
('currency_decimals', '2'),
('tax_decimals', '2'),
('quantity_decimals', '0'),
('country_codes', 'us'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('msg_msg', ''),
('msg_uid', ''),
('msg_src', ''),
('msg_pwd', ''),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('payment_options_order', 'cashdebitcredit'),
('protocol', 'mail'),
('mailpath', '/usr/sbin/sendmail'),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_user', ''),
('receipt_template', 'receipt_default'),
('theme', 'flatly'),
('login_form', 'floating_labels'),
('customer_sales_tax_support', '0'),
('language', 'english'),
('language_code', 'en-US'),
('date_or_time_format', ''),
('dinner_table_enable', '0'),
('customer_reward_enable', '0'),
('default_origin_tax_code', ''),
('cash_decimals', '2'),
('cash_rounding_code', '0'),
('financial_year', '1'),
('giftcard_number', 'series'),
('receipt_font_size', '12'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('receiving_calculate_average_price', '0'),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}'),
('last_used_work_order_number', '0'),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('allow_duplicate_barcodes', '0'),
('quote_default_comments', 'This is a default quote comment');


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_customers`
--

CREATE TABLE ospos_customers (
  person_id int NOT NULL,
  company_name varchar(255) DEFAULT NULL,
  account_number varchar(255) DEFAULT NULL,
  taxable int NOT NULL DEFAULT '1',
  sales_tax_code varchar(32) NOT NULL DEFAULT '1',
  discount_percent decimal(15,2) NOT NULL DEFAULT '0',
  package_id int DEFAULT NULL,
  points int DEFAULT NULL,
  deleted int NOT NULL DEFAULT '0',
  CONSTRAINT account_number UNIQUE  (account_number)
) ;

CREATE INDEX person_id ON ospos_customers (person_id);
CREATE INDEX package_id ON ospos_customers (package_id);

--
-- SQLINES DEMO *** table `ospos_customers`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_employees`
--

CREATE TABLE ospos_employees (
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  person_id int NOT NULL,
  deleted int NOT NULL DEFAULT '0',
  hash_version int NOT NULL DEFAULT '2',
  language VARCHAR(48) DEFAULT NULL,
  language_code VARCHAR(8) DEFAULT NULL,
  CONSTRAINT username UNIQUE  (username)
) ;

CREATE INDEX person_id ON ospos_employees (person_id);

--
-- SQLINES DEMO *** table `ospos_employees`
--

INSERT INTO ospos_employees (username, password, person_id, deleted, hash_version) VALUES
  ('admin', '$2y$10$vJBSMlD02EC7ENSrKfVQXuvq9tNRHMtcOA8MSK2NYS748HHWm.gcG', 1, 0, 2);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_giftcards`
--

CREATE TABLE ospos_giftcards (
  record_time datetime2(0) NOT NULL DEFAULT GETDATE(),
  giftcard_id int NOT NULL IDENTITY,
  giftcard_number VARCHAR(255) NULL,
  value decimal(15,2) NOT NULL,
  deleted int NOT NULL DEFAULT '0',
  person_id INT DEFAULT NULL,
  PRIMARY KEY (giftcard_id),
  CONSTRAINT giftcard_number UNIQUE  (giftcard_number)
) ;

CREATE INDEX person_id ON ospos_giftcards (person_id);

--
-- SQLINES DEMO *** table `ospos_giftcards`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_inventory`
--

CREATE TABLE ospos_inventory (
  trans_id int NOT NULL IDENTITY,
  trans_items int NOT NULL DEFAULT '0',
  trans_user int NOT NULL DEFAULT '0',
  trans_date datetime2(0) NOT NULL DEFAULT GETDATE(),
  trans_comment varchar(max) NOT NULL,
  trans_location int NOT NULL,
  trans_inventory decimal(15,3) NOT NULL DEFAULT '0',
  PRIMARY KEY (trans_id)
) ;

CREATE INDEX trans_items ON ospos_inventory (trans_items);
CREATE INDEX trans_user ON ospos_inventory (trans_user);
CREATE INDEX trans_location ON ospos_inventory (trans_location);

--
-- SQLINES DEMO *** table `ospos_inventory`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_items`
--

CREATE TABLE ospos_items (
  name varchar(255) NOT NULL,
  category varchar(255) NOT NULL,
  supplier_id int DEFAULT NULL,
  item_number varchar(255) DEFAULT NULL,
  description varchar(255) NOT NULL,
  cost_price decimal(15,2) NOT NULL,
  unit_price decimal(15,2) NOT NULL,
  reorder_level decimal(15,3) NOT NULL DEFAULT '0',
  receiving_quantity decimal(15,3) NOT NULL DEFAULT '1',
  item_id int NOT NULL IDENTITY,
  pic_filename varchar(255) DEFAULT NULL,
  allow_alt_description smallint NOT NULL,
  is_serialized smallint NOT NULL,
  stock_type SMALLINT NOT NULL DEFAULT 0,
  item_type SMALLINT NOT NULL DEFAULT 0,
  deleted int NOT NULL DEFAULT '0',
  custom1 VARCHAR(255) DEFAULT NULL,
  custom2 VARCHAR(255) DEFAULT NULL,
  custom3 VARCHAR(255) DEFAULT NULL,
  custom4 VARCHAR(255) DEFAULT NULL,
  custom5 VARCHAR(255) DEFAULT NULL,
  custom6 VARCHAR(255) DEFAULT NULL,
  custom7 VARCHAR(255) DEFAULT NULL,
  custom8 VARCHAR(255) DEFAULT NULL,
  custom9 VARCHAR(255) DEFAULT NULL,
  custom10 VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (item_id)
) ;

CREATE INDEX item_number ON ospos_items (item_number);
CREATE INDEX supplier_id ON ospos_items (supplier_id);

--
-- SQLINES DEMO *** table `ospos_items`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_items_taxes`
--

CREATE TABLE ospos_items_taxes (
  item_id int NOT NULL,
  name varchar(255) NOT NULL,
  [percent] decimal(15,3) NOT NULL,
  PRIMARY KEY (item_id,name,[percent])
) ;

--
-- SQLINES DEMO *** table `ospos_items_taxes`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_item_kits`
--

CREATE TABLE ospos_item_kits (
  item_kit_id int NOT NULL IDENTITY,
  name varchar(255) NOT NULL,
  item_id INT NOT NULL DEFAULT 0,
  kit_discount_percent DECIMAL(15,2) NOT NULL DEFAULT 0.00,
  price_option SMALLINT NOT NULL DEFAULT 0,
  print_option SMALLINT NOT NULL DEFAULT 0,
  description varchar(255) NOT NULL,
  PRIMARY KEY (item_kit_id)
) ;

--
-- SQLINES DEMO *** table `ospos_item_kits`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_item_kit_items`
--

CREATE TABLE ospos_item_kit_items (
  item_kit_id int NOT NULL,
  item_id int NOT NULL,
  quantity decimal(15,3) NOT NULL,
  kit_sequence INT NOT NULL DEFAULT 0,
  PRIMARY KEY (item_kit_id,item_id,quantity)
) ;

CREATE INDEX ospos_item_kit_items_ibfk_2 ON ospos_item_kit_items (item_id);

--
-- SQLINES DEMO *** table `ospos_item_kit_items`
--

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_item_quantities`
--

CREATE TABLE ospos_item_quantities (
  item_id int NOT NULL,
  location_id int NOT NULL,
  quantity decimal(15,3) NOT NULL DEFAULT '0',
  PRIMARY KEY (item_id,location_id)
) ;

CREATE INDEX item_id ON ospos_item_quantities (item_id);
CREATE INDEX location_id ON ospos_item_quantities (location_id);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_modules`
--

CREATE TABLE ospos_modules (
  name_lang_key varchar(255) NOT NULL,
  desc_lang_key varchar(255) NOT NULL,
  sort int NOT NULL,
  module_id varchar(255) NOT NULL,
  PRIMARY KEY (module_id),
  CONSTRAINT desc_lang_key UNIQUE  (desc_lang_key),
  CONSTRAINT name_lang_key UNIQUE  (name_lang_key)
) ;

--
-- SQLINES DEMO *** table `ospos_modules`
--

INSERT INTO ospos_modules (name_lang_key, desc_lang_key, sort, module_id) VALUES
('module_config', 'module_config_desc', 110, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_people`
--

CREATE TABLE ospos_people (
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  gender int DEFAULT NULL,
  phone_number varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  address_1 varchar(255) NOT NULL,
  address_2 varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  zip varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  comments varchar(max) NOT NULL,
  person_id int NOT NULL IDENTITY,
  PRIMARY KEY (person_id)
) ;

CREATE INDEX email ON ospos_people (email);

--
-- SQLINES DEMO *** table `ospos_people`
--
SET IDENTITY_INSERT ospos_people ON
GO
INSERT INTO ospos_people (first_name, last_name, phone_number, email, address_1, address_2, city, state, zip, country, comments, person_id) VALUES
('John', 'Doe', '555-555-5555', 'changeme@example.com', 'Address 1', '', '', '', '', '', '', 1);
SET IDENTITY_INSERT ospos_people OFF
GO

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_permissions`
--

CREATE TABLE ospos_permissions (
  permission_id varchar(255) NOT NULL,
  module_id varchar(255) NOT NULL,
  location_id int DEFAULT NULL,
  PRIMARY KEY (permission_id)
) ;

CREATE INDEX module_id ON ospos_permissions (module_id);

--
-- SQLINES DEMO *** table `ospos_permissions`
--

INSERT INTO ospos_permissions (permission_id, module_id) VALUES
('reports_customers', 'reports'),
('reports_receivings', 'reports'),
('reports_items', 'reports'),
('reports_employees', 'reports'),
('reports_suppliers', 'reports'),
('reports_sales', 'reports'),
('reports_discounts', 'reports'),
('reports_taxes', 'reports'),
('reports_inventory', 'reports'),
('reports_categories', 'reports'),
('reports_payments', 'reports'),
('customers', 'customers'),
('employees', 'employees'),
('giftcards', 'giftcards'),
('home', 'home'),
('items', 'items'),
('item_kits', 'item_kits'),
('messages', 'messages'),
('office', 'office'),
('receivings', 'receivings'),
('reports', 'reports'),
('sales', 'sales'),
('config', 'config'),
('suppliers', 'suppliers'),
('taxes', 'taxes');



INSERT INTO ospos_permissions (permission_id, module_id, location_id) VALUES
('items_stock', 'items', 1),
('sales_stock', 'sales', 1),
('receivings_stock', 'receivings', 1);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_grants`
--

CREATE TABLE ospos_grants (
  permission_id varchar(255) NOT NULL,
  person_id int NOT NULL,
  menu_group varchar(32) DEFAULT 'home',
  PRIMARY KEY (permission_id,person_id)
) ;

--
-- SQLINES DEMO *** table `ospos_grants`
--
-- SQLINES DEMO *** ---------------------------------------

INSERT INTO ospos_grants (permission_id, person_id, menu_group) VALUES
('reports_customers', 1, 'home'),
('reports_receivings', 1, 'home'),
('reports_items', 1, 'home'),
('reports_inventory', 1, 'home'),
('reports_employees', 1, 'home'),
('reports_suppliers', 1, 'home'),
('reports_sales', 1, 'home'),
('reports_discounts', 1, 'home'),
('reports_taxes', 1, 'home'),
('reports_categories', 1, 'home'),
('reports_payments', 1, 'home'),
('customers', 1, 'home'),
('employees', 1, 'office'),
('giftcards', 1, 'home'),
('items', 1, 'home'),
('item_kits', 1, 'home'),
('messages', 1, 'home'),
('receivings', 1, 'home'),
('reports', 1, 'home'),
('sales', 1, 'home'),
('config', 1, 'office'),
('items_stock', 1, 'home'),
('sales_stock', 1, 'home'),
('receivings_stock', 1, 'home'),
('suppliers', 1, 'home'),
('taxes', 1, 'office'),
('office', 1, 'home'),
('home', 1, 'office');

--
-- SQLINES DEMO *** or table `ospos_receivings`
--

CREATE TABLE ospos_receivings (
  receiving_time datetime2(0) NOT NULL DEFAULT GETDATE(),
  supplier_id int DEFAULT NULL,
  employee_id int NOT NULL DEFAULT '0',
  comment varchar(max) DEFAULT NULL,
  receiving_id int NOT NULL IDENTITY,
  payment_type varchar(20) DEFAULT NULL,
  reference varchar(32) DEFAULT NULL,
  PRIMARY KEY (receiving_id)
) ;

CREATE INDEX supplier_id ON ospos_receivings (supplier_id);
CREATE INDEX employee_id ON ospos_receivings (employee_id);
CREATE INDEX reference ON ospos_receivings (reference);

--
-- SQLINES DEMO *** table `ospos_receivings`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_receivings_items`
--

CREATE TABLE ospos_receivings_items (
  receiving_id int NOT NULL DEFAULT '0',
  item_id int NOT NULL DEFAULT '0',
  description varchar(30) DEFAULT NULL,
  serialnumber varchar(30) DEFAULT NULL,
  line int NOT NULL,
  quantity_purchased decimal(15,3) NOT NULL DEFAULT '0',
  item_cost_price decimal(15,2) NOT NULL,
  item_unit_price decimal(15,2) NOT NULL,
  discount_percent decimal(15,2) NOT NULL DEFAULT '0',
  item_location int NOT NULL,
  receiving_quantity decimal(15,3) NOT NULL DEFAULT '1',
  PRIMARY KEY (receiving_id,item_id,line)
) ;

CREATE INDEX item_id ON ospos_receivings_items (item_id);

--
-- SQLINES DEMO *** table `ospos_receivings_items`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales`
--

CREATE TABLE ospos_sales (
  sale_time datetime2(0) NOT NULL DEFAULT GETDATE(),
  customer_id int DEFAULT NULL,
  employee_id int NOT NULL DEFAULT '0',
  comment varchar(max) DEFAULT NULL,
  invoice_number varchar(32) DEFAULT NULL,
  quote_number varchar(32) DEFAULT NULL,
  sale_id int NOT NULL IDENTITY,
  sale_status smallint NOT NULL DEFAULT 0,
  dinner_table_id int NULL,
  work_order_number varchar(32) DEFAULT NULL,
  sale_type smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (sale_id)
,
  CONSTRAINT invoice_number UNIQUE  (invoice_number)
) ;

CREATE INDEX customer_id ON ospos_sales (customer_id);
CREATE INDEX employee_id ON ospos_sales (employee_id);
CREATE INDEX sale_time ON ospos_sales (sale_time);
CREATE INDEX dinner_table_id ON ospos_sales (dinner_table_id);

--
-- SQLINES DEMO *** table `ospos_sales`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales_items`
--

CREATE TABLE ospos_sales_items (
  sale_id int NOT NULL DEFAULT '0',
  item_id int NOT NULL DEFAULT '0',
  description varchar(255) DEFAULT NULL,
  serialnumber varchar(30) DEFAULT NULL,
  line int NOT NULL DEFAULT '0',
  quantity_purchased decimal(15,3) NOT NULL DEFAULT '0',
  item_cost_price decimal(15,2) NOT NULL,
  item_unit_price decimal(15,2) NOT NULL,
  discount_percent decimal(15,2) NOT NULL DEFAULT '0',
  item_location int NOT NULL,
  print_option SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (sale_id,item_id,line)
) ;

CREATE INDEX sale_id ON ospos_sales_items (sale_id);
CREATE INDEX item_id ON ospos_sales_items (item_id);
CREATE INDEX item_location ON ospos_sales_items (item_location);

--
-- SQLINES DEMO *** table `ospos_sales_items`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales_items_taxes`
--

CREATE TABLE ospos_sales_items_taxes (
  sale_id int NOT NULL,
  item_id int NOT NULL,
  line int NOT NULL DEFAULT '0',
  name varchar(255) NOT NULL,
  [percent] decimal(15,4) NOT NULL DEFAULT 0.0000,
  tax_type smallint NOT NULL DEFAULT 0,
  rounding_code smallint NOT NULL DEFAULT 0,
  cascade_tax smallint NOT NULL DEFAULT 0,
  cascade_sequence smallint NOT NULL DEFAULT 0,
  item_tax_amount decimal(15,4) NOT NULL DEFAULT 0,
  PRIMARY KEY (sale_id,item_id,line,name,[percent])
) ;

CREATE INDEX sale_id ON ospos_sales_items_taxes (sale_id);
CREATE INDEX item_id ON ospos_sales_items_taxes (item_id);

--
-- SQLINES DEMO *** table `ospos_sales_items_taxes`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales_payments`
--

CREATE TABLE ospos_sales_payments (
  sale_id int NOT NULL,
  payment_type varchar(40) NOT NULL,
  payment_amount decimal(15,2) NOT NULL,
  PRIMARY KEY (sale_id,payment_type)
) ;

CREATE INDEX sale_id ON ospos_sales_payments (sale_id);

--
-- SQLINES DEMO *** table `ospos_sales_payments`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales_taxes`
--

CREATE TABLE ospos_sales_taxes (
  sale_id int NOT NULL,
  tax_type smallint NOT NULL,
  tax_group varchar(32) NOT NULL,
  sale_tax_basis decimal(15,4) NOT NULL,
  sale_tax_amount decimal(15,4) NOT NULL,
  print_sequence smallint NOT NULL DEFAULT 0,
  name varchar(255) NOT NULL,
  tax_rate decimal(15,4) NOT NULL,
  sales_tax_code varchar(32) NOT NULL DEFAULT '',
  rounding_code smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (sale_id,tax_type,tax_group)
) ;

CREATE INDEX print_sequence ON ospos_sales_taxes (sale_id,print_sequence,tax_type,tax_group);

--
-- SQLINES DEMO *** table `ospos_sales_taxes`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sessions`
--

CREATE TABLE ospos_sessions (
  id varchar(40) NOT NULL,
  ip_address varchar(45) NOT NULL,
  timestamp int check (timestamp > 0) DEFAULT 0 NOT NULL,
  data varbinary(max) NOT NULL
) ;

CREATE INDEX ci_sessions_timestamp ON ospos_sessions (timestamp);

--
-- SQLINES DEMO *** table `ospos_sessions`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_stock_locations`
--

CREATE TABLE ospos_stock_locations (
  location_id int NOT NULL IDENTITY,
  location_name varchar(255) DEFAULT NULL,
  deleted int NOT NULL DEFAULT '0',
  PRIMARY KEY (location_id)
) ;

--
-- SQLINES DEMO *** table `ospos_stock_locations`
--

INSERT INTO ospos_stock_locations (location_name ) VALUES ('stock');


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_suppliers`
--

CREATE TABLE ospos_suppliers (
  person_id int NOT NULL,
  company_name varchar(255) NOT NULL,
  agency_name varchar(255) NOT NULL,
  account_number varchar(255) DEFAULT NULL,
  deleted int NOT NULL DEFAULT '0',
  CONSTRAINT account_number UNIQUE  (account_number)
)  ;

CREATE INDEX person_id ON ospos_suppliers (person_id);


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_tax_categories`
--

CREATE TABLE ospos_tax_categories (
  tax_category_id int NOT NULL IDENTITY,
  tax_category varchar(32) NOT NULL,
  tax_group_sequence smallint NOT NULL,
  PRIMARY KEY (tax_category_id)
)  ;


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_tax_codes`
--

CREATE TABLE ospos_tax_codes (
  tax_code varchar(32) NOT NULL,
  tax_code_name varchar(255) NOT NULL DEFAULT '',
  tax_code_type smallint NOT NULL DEFAULT 0,
  city varchar(255) NOT NULL DEFAULT '',
  state varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (tax_code)
) ;

--
-- SQLINES DEMO *** table `ospos_tax_codes`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_tax_code_rates`
--

CREATE TABLE ospos_tax_code_rates (
  rate_tax_code varchar(32) NOT NULL,
  rate_tax_category_id int NOT NULL,
  tax_rate decimal(15,4) NOT NULL DEFAULT 0.0000,
  rounding_code smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (rate_tax_code,rate_tax_category_id)
) ;

--
-- SQLINES DEMO *** table `ospos_tax_code_rates`
--


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_dinner_tables`
--

CREATE TABLE ospos_dinner_tables (
  dinner_table_id int NOT NULL IDENTITY,
  name varchar(30) NOT NULL,
  status smallint NOT NULL DEFAULT '0',
  deleted int NOT NULL DEFAULT '0',
  PRIMARY KEY (dinner_table_id)
)  ;

--
-- SQLINES DEMO *** table `ospos_dinner_tables`
--

INSERT INTO ospos_dinner_tables (name) VALUES ('Delivery'), ('Take Away');


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_customer_packages`
--

CREATE TABLE ospos_customers_packages (
  package_id int NOT NULL IDENTITY,
  package_name varchar(255) DEFAULT NULL,
  points_percent float NOT NULL DEFAULT '0',
  deleted int NOT NULL DEFAULT '0',
  PRIMARY KEY (package_id)
)  ;

INSERT INTO ospos_customers_packages (package_name, points_percent) VALUES
  ('Default', 0),
  ('Bronze', 10),
  ('Silver', 20),
  ('Gold', 30),
  ('Premium', 50);


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_customer_points`
--

CREATE TABLE ospos_customers_points (
  id int NOT NULL IDENTITY,
  person_id int NOT NULL,
  package_id int NOT NULL,
  sale_id int NOT NULL,
  points_earned int NOT NULL,
  PRIMARY KEY (id)
)  ;

CREATE INDEX person_id ON ospos_customers_points (person_id);
CREATE INDEX package_id ON ospos_customers_points (package_id);
CREATE INDEX sale_id ON ospos_customers_points (sale_id);


-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `ospos_sales_reward_points`
--

CREATE TABLE ospos_sales_reward_points (
  id int NOT NULL IDENTITY,
  sale_id int NOT NULL,
  earned float NOT NULL,
  used float NOT NULL,
  PRIMARY KEY (id)
)  ;

CREATE INDEX sale_id ON ospos_sales_reward_points (sale_id);


-- SQLINES DEMO *** ---------------------------------------