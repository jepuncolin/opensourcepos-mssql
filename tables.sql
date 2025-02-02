
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sessions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sessions] DROP CONSTRAINT IF EXISTS [CK__ospos_ses__times__414EAC47]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_rates]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_rates] DROP CONSTRAINT IF EXISTS [ospos_tax_rates_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_rates]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_rates] DROP CONSTRAINT IF EXISTS [ospos_tax_rates_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_rates]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_rates] DROP CONSTRAINT IF EXISTS [ospos_tax_rates_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_suppliers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_suppliers] DROP CONSTRAINT IF EXISTS [ospos_suppliers_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_reward_points]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_reward_points] DROP CONSTRAINT IF EXISTS [ospos_sales_reward_points_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [ospos_sales_payments_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [ospos_sales_payments_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [ospos_sales_items_taxes_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [ospos_sales_items_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [ospos_sales_items_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [ospos_sales_items_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [ospos_receivings_items_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [ospos_receivings_items_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items_taxes] DROP CONSTRAINT IF EXISTS [ospos_items_taxes_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_quantities]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_quantities] DROP CONSTRAINT IF EXISTS [ospos_item_quantities_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_quantities]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_quantities] DROP CONSTRAINT IF EXISTS [ospos_item_quantities_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kit_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kit_items] DROP CONSTRAINT IF EXISTS [ospos_item_kit_items_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kit_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kit_items] DROP CONSTRAINT IF EXISTS [ospos_item_kit_items_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [ospos_inventory_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [ospos_inventory_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [ospos_inventory_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_grants]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_grants] DROP CONSTRAINT IF EXISTS [ospos_grants_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_grants]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_grants] DROP CONSTRAINT IF EXISTS [ospos_grants_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_giftcards]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_giftcards] DROP CONSTRAINT IF EXISTS [ospos_giftcards_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [ospos_expenses_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [ospos_expenses_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [ospos_expenses_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_employees]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_employees] DROP CONSTRAINT IF EXISTS [ospos_employees_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_points]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_points] DROP CONSTRAINT IF EXISTS [ospos_customers_points_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_points]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_points] DROP CONSTRAINT IF EXISTS [ospos_customers_points_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_points]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_points] DROP CONSTRAINT IF EXISTS [ospos_customers_points_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [ospos_customers_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [ospos_customers_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [ospos_customers_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_cash_up]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_cash_up] DROP CONSTRAINT IF EXISTS [ospos_cash_up_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_cash_up]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_cash_up] DROP CONSTRAINT IF EXISTS [ospos_cash_up_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [ospos_attribute_links_ibfk_5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [ospos_attribute_links_ibfk_4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [ospos_attribute_links_ibfk_3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [ospos_attribute_links_ibfk_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [ospos_attribute_links_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_definitions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_definitions] DROP CONSTRAINT IF EXISTS [fk_ospos_attribute_definitions_ibfk_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_rates]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_rates] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__tax_r__4AD81681]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_rates]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_rates] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__tax_r__49E3F248]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_jurisdictions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_jurisdictions] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__delet__220B0B18]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_jurisdictions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_jurisdictions] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__casca__2116E6DF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_jurisdictions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_jurisdictions] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__tax_g__2022C2A6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_jurisdictions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_jurisdictions] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__repor__1F2E9E6D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_jurisdictions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_jurisdictions] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__juris__1E3A7A34]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_codes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_codes] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__delet__1A69E950]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_codes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_codes] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__state__1975C517]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_codes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_codes] DROP CONSTRAINT IF EXISTS [DF__ospos_tax___city__1881A0DE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_codes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_codes] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__tax_c__178D7CA5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_tax_categories]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_tax_categories] DROP CONSTRAINT IF EXISTS [DF__ospos_tax__delet__14B10FFA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_suppliers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_suppliers] DROP CONSTRAINT IF EXISTS [DF__ospos_sup__delet__10E07F16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_suppliers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_suppliers] DROP CONSTRAINT IF EXISTS [DF__ospos_sup__tax_i__0FEC5ADD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_suppliers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_suppliers] DROP CONSTRAINT IF EXISTS [DF__ospos_sup__accou__0EF836A4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_stock_locations]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_stock_locations] DROP CONSTRAINT IF EXISTS [DF__ospos_sto__delet__395884C4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_stock_locations]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_stock_locations] DROP CONSTRAINT IF EXISTS [DF__ospos_sto__locat__3864608B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sessions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sessions] DROP CONSTRAINT IF EXISTS [DF__ospos_ses__times__4242D080]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__round__3F6663D5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sales__3E723F9C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__print__3D7E1B63]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__tax_c__3C89F72A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__juris__3B95D2F1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__refer__33F4B129]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__payme__33008CF0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__emplo__320C68B7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__cash___3118447E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_payments]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_payments] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__cash___30242045]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__tax_c__6FD49106]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__juris__6EE06CCD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sales__6DEC4894]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__item___6CF8245B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__casca__6C040022]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__round__6B0FDBE9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__tax_t__6A1BB7B0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__perce__69279377]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items_taxes]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items_taxes] DROP CONSTRAINT IF EXISTS [DF__ospos_sale__line__68336F3E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__print__1EF99443]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__disco__1E05700A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__disco__1D114BD1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__quant__1C1D2798]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sale__line__1B29035F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__seria__1A34DF26]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__descr__1940BAED]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__item___184C96B4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales_items] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sale___1758727B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sale___19DFD96B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__work___18EBB532]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sale___17F790F9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__quote__17036CC0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__invoi__160F4887]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__comme__151B244E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__emplo__14270015]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__custo__1332DBDC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_sales]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_sales] DROP CONSTRAINT IF EXISTS [DF__ospos_sal__sale___123EB7A3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__recei__119F9925]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__disco__10AB74EC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__disco__0FB750B3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__quant__0EC32C7A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__seria__0DCF0841]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__descr__0CDAE408]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__item___0BE6BFCF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings_items] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__recei__0AF29B96]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__refer__05D8E0BE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__payme__04E4BC85]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__comme__03F0984C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__emplo__02FC7413]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__suppl__02084FDA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_receivings]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_receivings] DROP CONSTRAINT IF EXISTS [DF__ospos_rec__recei__01142BA1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_permissions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_permissions] DROP CONSTRAINT IF EXISTS [DF__ospos_per__locat__7B5B524B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_people]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_people] DROP CONSTRAINT IF EXISTS [DF__ospos_peo__gende__787EE5A0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_migrations]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_migrations] DROP CONSTRAINT IF EXISTS [DF__ospos_mig__recei__0169315C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_migrations]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_migrations] DROP CONSTRAINT IF EXISTS [DF__ospos_mig__sale___00750D23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__delet__5AEE82B9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__item___59FA5E80]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__stock__59063A47]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__pic_f__5812160E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__recei__571DF1D5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__reord__5629CD9C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__item___5535A963]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__suppl__5441852A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_quantities]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_quantities] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__quant__78D3EB5B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kits]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kits] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__print__6C190EBB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kits]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kits] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__price__6B24EA82]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kits]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kits] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__kit_d__6A30C649]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kits]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kits] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__item___693CA210]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_item_kit_items]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_item_kit_items] DROP CONSTRAINT IF EXISTS [DF__ospos_ite__kit_s__731B1205]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [DF__ospos_inv__trans__6D6238AF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [DF__ospos_inv__trans__6C6E1476]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [DF__ospos_inv__trans__6B79F03D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_inventory]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_inventory] DROP CONSTRAINT IF EXISTS [DF__ospos_inv__trans__6A85CC04]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_grants]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_grants] DROP CONSTRAINT IF EXISTS [DF__ospos_gra__menu___65C116E7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_giftcards]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_giftcards] DROP CONSTRAINT IF EXISTS [DF__ospos_gif__perso__61F08603]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_giftcards]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_giftcards] DROP CONSTRAINT IF EXISTS [DF__ospos_gif__delet__60FC61CA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_giftcards]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_giftcards] DROP CONSTRAINT IF EXISTS [DF__ospos_gif__giftc__60083D91]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_giftcards]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_giftcards] DROP CONSTRAINT IF EXISTS [DF__ospos_gif__recor__5F141958]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__suppl__58671BC9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__tax_a__5772F790]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__suppl__567ED357]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__delet__558AAF1E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expenses]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expenses] DROP CONSTRAINT IF EXISTS [DF__ospos_expe__date__54968AE5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expense_categories]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expense_categories] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__delet__51BA1E3A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_expense_categories]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_expense_categories] DROP CONSTRAINT IF EXISTS [DF__ospos_exp__categ__50C5FA01]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_employees]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_employees] DROP CONSTRAINT IF EXISTS [DF__ospos_emp__langu__13F1F5EB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_employees]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_employees] DROP CONSTRAINT IF EXISTS [DF__ospos_emp__langu__12FDD1B2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_employees]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_employees] DROP CONSTRAINT IF EXISTS [DF__ospos_emp__hash___1209AD79]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_employees]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_employees] DROP CONSTRAINT IF EXISTS [DF__ospos_emp__delet__11158940]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_dinner_tables]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_dinner_tables] DROP CONSTRAINT IF EXISTS [DF__ospos_din__delet__4C0144E4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_dinner_tables]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_dinner_tables] DROP CONSTRAINT IF EXISTS [DF__ospos_din__statu__4B0D20AB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_packages]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_packages] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__delet__45544755]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_packages]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_packages] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__point__4460231C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers_packages]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers_packages] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__packa__436BFEE3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__conse__10766AC2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cust__date__0F824689]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__delet__0E8E2250]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__point__0D99FE17]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__packa__0CA5D9DE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__disco__0BB1B5A5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__disco__0ABD916C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__sales__09C96D33]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__tax_i__08D548FA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__taxab__07E124C1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__accou__06ED0088]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_customers]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_customers] DROP CONSTRAINT IF EXISTS [DF__ospos_cus__compa__05F8DC4F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_cash_up]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_cash_up] DROP CONSTRAINT IF EXISTS [DF__ospos_cas__delet__3CBF0154]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_cash_up]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_cash_up] DROP CONSTRAINT IF EXISTS [DF__ospos_cas__close__3BCADD1B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_cash_up]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_cash_up] DROP CONSTRAINT IF EXISTS [DF__ospos_cas__open___3AD6B8E2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [DF__ospos_att__recei__324172E1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [DF__ospos_att__sale___314D4EA8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [DF__ospos_att__item___30592A6F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_links]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_links] DROP CONSTRAINT IF EXISTS [DF__ospos_att__attri__2F650636]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ospos_attribute_definitions]') AND type in (N'U'))
ALTER TABLE [dbo].[ospos_attribute_definitions] DROP CONSTRAINT IF EXISTS [DF__ospos_att__delet__55F4C372]
GO
/****** Object:  Table [dbo].[ospos_tax_rates]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_tax_rates]
GO
/****** Object:  Table [dbo].[ospos_tax_jurisdictions]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_tax_jurisdictions]
GO
/****** Object:  Table [dbo].[ospos_tax_codes]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_tax_codes]
GO
/****** Object:  Table [dbo].[ospos_tax_categories]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_tax_categories]
GO
/****** Object:  Table [dbo].[ospos_suppliers]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_suppliers]
GO
/****** Object:  Table [dbo].[ospos_sumpay_taxes_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sumpay_taxes_temp]
GO
/****** Object:  Table [dbo].[ospos_sumpay_payments_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sumpay_payments_temp]
GO
/****** Object:  Table [dbo].[ospos_sumpay_items_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sumpay_items_temp]
GO
/****** Object:  Table [dbo].[ospos_stock_locations]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_stock_locations]
GO
/****** Object:  Table [dbo].[ospos_sessions]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sessions]
GO
/****** Object:  Table [dbo].[ospos_sales_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_taxes]
GO
/****** Object:  Table [dbo].[ospos_sales_reward_points]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_reward_points]
GO
/****** Object:  Table [dbo].[ospos_sales_payments_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_payments_temp]
GO
/****** Object:  Table [dbo].[ospos_sales_payments]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_payments]
GO
/****** Object:  Table [dbo].[ospos_sales_items_taxes_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_items_taxes_temp]
GO
/****** Object:  Table [dbo].[ospos_sales_items_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_items_taxes]
GO
/****** Object:  Table [dbo].[ospos_sales_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales_items]
GO
/****** Object:  Table [dbo].[ospos_sales]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_sales]
GO
/****** Object:  Table [dbo].[ospos_receivings_items_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_receivings_items_temp]
GO
/****** Object:  Table [dbo].[ospos_receivings_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_receivings_items]
GO
/****** Object:  Table [dbo].[ospos_receivings]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_receivings]
GO
/****** Object:  Table [dbo].[ospos_permissions]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_permissions]
GO
/****** Object:  Table [dbo].[ospos_people]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_people]
GO
/****** Object:  Table [dbo].[ospos_modules]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_modules]
GO
/****** Object:  Table [dbo].[ospos_migrations]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_migrations]
GO
/****** Object:  Table [dbo].[ospos_items_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_items_taxes]
GO
/****** Object:  Table [dbo].[ospos_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_items]
GO
/****** Object:  Table [dbo].[ospos_item_quantities]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_item_quantities]
GO
/****** Object:  Table [dbo].[ospos_item_kits]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_item_kits]
GO
/****** Object:  Table [dbo].[ospos_item_kit_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_item_kit_items]
GO
/****** Object:  Table [dbo].[ospos_inventory]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_inventory]
GO
/****** Object:  Table [dbo].[ospos_grants]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_grants]
GO
/****** Object:  Table [dbo].[ospos_giftcards]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_giftcards]
GO
/****** Object:  Table [dbo].[ospos_expenses]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_expenses]
GO
/****** Object:  Table [dbo].[ospos_expense_categories]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_expense_categories]
GO
/****** Object:  Table [dbo].[ospos_employees]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_employees]
GO
/****** Object:  Table [dbo].[ospos_dinner_tables]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_dinner_tables]
GO
/****** Object:  Table [dbo].[ospos_customers_points]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_customers_points]
GO
/****** Object:  Table [dbo].[ospos_customers_packages]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_customers_packages]
GO
/****** Object:  Table [dbo].[ospos_customers]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_customers]
GO
/****** Object:  Table [dbo].[ospos_cash_up]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_cash_up]
GO
/****** Object:  Table [dbo].[ospos_attribute_values]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_attribute_values]
GO
/****** Object:  Table [dbo].[ospos_attribute_links]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_attribute_links]
GO
/****** Object:  Table [dbo].[ospos_attribute_definitions]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_attribute_definitions]
GO
/****** Object:  Table [dbo].[ospos_app_config]    Script Date: 2025/2/2 下午 07:39:28 ******/
DROP TABLE IF EXISTS [dbo].[ospos_app_config]
GO
/****** Object:  Table [dbo].[ospos_app_config]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_app_config](
	[key] [varchar](50) NOT NULL,
	[value] [varchar](500) NULL,
 CONSTRAINT [PK__ospos_ap__DFD83CAE47022B7A] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_attribute_definitions]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_attribute_definitions](
	[definition_id] [int] IDENTITY(1,1) NOT NULL,
	[definition_name] [varchar](255) NOT NULL,
	[definition_type] [varchar](45) NOT NULL,
	[definition_unit] [varchar](16) NULL,
	[definition_flags] [int] NOT NULL,
	[definition_fk] [int] NULL,
	[deleted] [smallint] NOT NULL,
 CONSTRAINT [PK__ospos_at__95FF5EB6CE63209A] PRIMARY KEY CLUSTERED 
(
	[definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_attribute_links]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_attribute_links](
	[attribute_id] [int] NULL,
	[definition_id] [int] NOT NULL,
	[item_id] [int] NULL,
	[sale_id] [int] NULL,
	[receiving_id] [int] NULL,
 CONSTRAINT [attribute_links_uq1] UNIQUE NONCLUSTERED 
(
	[attribute_id] ASC,
	[definition_id] ASC,
	[item_id] ASC,
	[sale_id] ASC,
	[receiving_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [attribute_links_uq2] UNIQUE NONCLUSTERED 
(
	[item_id] ASC,
	[sale_id] ASC,
	[receiving_id] ASC,
	[definition_id] ASC,
	[attribute_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_attribute_values]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_attribute_values](
	[attribute_id] [int] IDENTITY(1,1) NOT NULL,
	[attribute_value] [varchar](255) NULL,
	[attribute_date] [datetime2](0) NULL,
	[attribute_decimal] [decimal](7, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[attribute_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[attribute_value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_cash_up]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_cash_up](
	[cashup_id] [int] IDENTITY(1,1) NOT NULL,
	[open_date] [datetime2](0) NULL,
	[close_date] [datetime2](0) NULL,
	[open_amount_cash] [decimal](15, 2) NOT NULL,
	[transfer_amount_cash] [decimal](15, 2) NOT NULL,
	[note] [int] NOT NULL,
	[closed_amount_cash] [decimal](15, 2) NOT NULL,
	[closed_amount_card] [decimal](15, 2) NOT NULL,
	[closed_amount_check] [decimal](15, 2) NOT NULL,
	[closed_amount_total] [decimal](15, 2) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[open_employee_id] [int] NOT NULL,
	[close_employee_id] [int] NOT NULL,
	[deleted] [smallint] NOT NULL,
	[closed_amount_due] [decimal](15, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cashup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_customers]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_customers](
	[person_id] [int] NOT NULL,
	[company_name] [varchar](255) NULL,
	[account_number] [varchar](255) NULL,
	[taxable] [smallint] NOT NULL,
	[tax_id] [varchar](32) NOT NULL,
	[sales_tax_code_id] [int] NULL,
	[discount] [decimal](15, 2) NOT NULL,
	[discount_type] [smallint] NOT NULL,
	[package_id] [int] NULL,
	[points] [int] NULL,
	[deleted] [smallint] NOT NULL,
	[date] [datetime2](0) NOT NULL,
	[employee_id] [int] NOT NULL,
	[consent] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_account_number] UNIQUE NONCLUSTERED 
(
	[account_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_customers_packages]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_customers_packages](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](255) NULL,
	[points_percent] [float] NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_customers_points]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_customers_points](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[package_id] [int] NOT NULL,
	[sale_id] [int] NOT NULL,
	[points_earned] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_dinner_tables]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_dinner_tables](
	[dinner_table_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[status] [smallint] NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dinner_table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_employees]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_employees](
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[person_id] [int] NOT NULL,
	[deleted] [smallint] NOT NULL,
	[hash_version] [varchar](2) NOT NULL,
	[language] [varchar](48) NULL,
	[language_code] [varchar](8) NULL,
 CONSTRAINT [PK__ospos_em__543848DFB5BCE198] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_expense_categories]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_expense_categories](
	[expense_category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NULL,
	[category_description] [varchar](255) NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[expense_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [category_name] UNIQUE NONCLUSTERED 
(
	[category_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_expenses]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_expenses](
	[expense_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime2](0) NULL,
	[amount] [decimal](15, 2) NOT NULL,
	[payment_type] [varchar](40) NOT NULL,
	[expense_category_id] [int] NOT NULL,
	[description] [varchar](255) NOT NULL,
	[employee_id] [int] NOT NULL,
	[deleted] [smallint] NOT NULL,
	[supplier_tax_code] [varchar](255) NULL,
	[tax_amount] [decimal](15, 2) NULL,
	[supplier_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[expense_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_giftcards]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_giftcards](
	[record_time] [datetime2](0) NOT NULL,
	[giftcard_id] [int] IDENTITY(1,1) NOT NULL,
	[giftcard_number] [varchar](255) NULL,
	[value] [decimal](15, 2) NOT NULL,
	[deleted] [smallint] NOT NULL,
	[person_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[giftcard_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [giftcard_number] UNIQUE NONCLUSTERED 
(
	[giftcard_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_grants]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_grants](
	[permission_id] [varchar](255) NOT NULL,
	[person_id] [int] NOT NULL,
	[menu_group] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC,
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_inventory]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_inventory](
	[trans_id] [int] IDENTITY(1,1) NOT NULL,
	[trans_items] [int] NOT NULL,
	[trans_user] [int] NOT NULL,
	[trans_date] [datetime2](0) NOT NULL,
	[trans_comment] [varchar](max) NOT NULL,
	[trans_location] [int] NOT NULL,
	[trans_inventory] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[trans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_item_kit_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_item_kit_items](
	[item_kit_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[quantity] [decimal](15, 3) NOT NULL,
	[kit_sequence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_kit_id] ASC,
	[item_id] ASC,
	[quantity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_item_kits]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_item_kits](
	[item_kit_id] [int] IDENTITY(1,1) NOT NULL,
	[item_kit_number] [varchar](255) NULL,
	[name] [varchar](255) NOT NULL,
	[item_id] [int] NOT NULL,
	[kit_discount] [decimal](15, 2) NOT NULL,
	[kit_discount_type] [smallint] NULL,
	[price_option] [smallint] NOT NULL,
	[print_option] [smallint] NOT NULL,
	[description] [varchar](255) NOT NULL,
 CONSTRAINT [PK__ospos_it__B04BEA97148155E4] PRIMARY KEY CLUSTERED 
(
	[item_kit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_item_quantities]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_item_quantities](
	[item_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[quantity] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC,
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_items](
	[name] [varchar](255) NOT NULL,
	[category] [varchar](255) NOT NULL,
	[supplier_id] [int] NULL,
	[item_number] [varchar](255) NULL,
	[description] [varchar](255) NOT NULL,
	[cost_price] [decimal](15, 2) NOT NULL,
	[unit_price] [decimal](15, 2) NOT NULL,
	[reorder_level] [decimal](15, 3) NOT NULL,
	[receiving_quantity] [decimal](15, 3) NOT NULL,
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[pic_filename] [varchar](255) NULL,
	[allow_alt_description] [smallint] NOT NULL,
	[is_serialized] [smallint] NOT NULL,
	[stock_type] [smallint] NOT NULL,
	[item_type] [smallint] NOT NULL,
	[deleted] [int] NOT NULL,
	[tax_category_id] [int] NULL,
	[qty_per_pack] [decimal](15, 3) NULL,
	[pack_name] [varchar](255) NULL,
	[low_sell_item_id] [int] NULL,
	[hsn_code] [varchar](32) NULL,
 CONSTRAINT [PK__ospos_it__52020FDDE7FC4418] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_items_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_items_taxes](
	[item_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[percent] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC,
	[name] ASC,
	[percent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_migrations]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_migrations](
	[version] [bigint] NOT NULL,
	[sale_id] [varchar](50) NULL,
	[receiving_id] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_modules]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_modules](
	[name_lang_key] [varchar](255) NOT NULL,
	[desc_lang_key] [varchar](255) NOT NULL,
	[sort] [int] NOT NULL,
	[module_id] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [desc_lang_key] UNIQUE NONCLUSTERED 
(
	[desc_lang_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [name_lang_key] UNIQUE NONCLUSTERED 
(
	[name_lang_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_people]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_people](
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[gender] [int] NULL,
	[phone_number] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[address_1] [varchar](255) NOT NULL,
	[address_2] [varchar](255) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[state] [varchar](255) NOT NULL,
	[zip] [varchar](255) NOT NULL,
	[country] [varchar](255) NOT NULL,
	[comments] [varchar](max) NOT NULL,
	[person_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_permissions]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_permissions](
	[permission_id] [varchar](255) NOT NULL,
	[module_id] [varchar](255) NOT NULL,
	[location_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_receivings]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_receivings](
	[receiving_time] [datetime2](0) NOT NULL,
	[supplier_id] [int] NULL,
	[employee_id] [int] NOT NULL,
	[comment] [varchar](max) NULL,
	[receiving_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_type] [varchar](20) NULL,
	[reference] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[receiving_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_receivings_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_receivings_items](
	[receiving_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[description] [varchar](30) NULL,
	[serialnumber] [varchar](30) NULL,
	[line] [int] NOT NULL,
	[quantity_purchased] [decimal](15, 3) NOT NULL,
	[item_cost_price] [decimal](15, 2) NOT NULL,
	[item_unit_price] [decimal](15, 2) NOT NULL,
	[discount] [decimal](15, 2) NOT NULL,
	[discount_type] [smallint] NOT NULL,
	[item_location] [int] NOT NULL,
	[receiving_quantity] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[receiving_id] ASC,
	[item_id] ASC,
	[line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_receivings_items_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_receivings_items_temp](
	[receiving_date] [date] NULL,
	[receiving_time] [datetime2](0) NULL,
	[receiving_id] [int] NOT NULL,
	[comment] [varchar](max) NULL,
	[item_location] [int] NULL,
	[reference] [varchar](32) NULL,
	[payment_type] [varchar](20) NULL,
	[employee_id] [int] NULL,
	[item_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[quantity_purchased] [decimal](15, 3) NULL,
	[item_receiving_quantity] [decimal](15, 3) NULL,
	[item_cost_price] [decimal](15, 2) NULL,
	[item_unit_price] [decimal](15, 2) NULL,
	[discount] [decimal](15, 2) NULL,
	[discount_type] [smallint] NULL,
	[line] [int] NOT NULL,
	[serialnumber] [varchar](30) NULL,
	[description] [varchar](30) NULL,
	[subtotal] [decimal](38, 6) NULL,
	[total] [decimal](38, 6) NULL,
	[profit] [decimal](38, 6) NULL,
	[cost] [decimal](38, 6) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales](
	[sale_time] [datetime2](0) NOT NULL,
	[customer_id] [int] NULL,
	[employee_id] [int] NOT NULL,
	[comment] [varchar](max) NULL,
	[invoice_number] [varchar](32) NULL,
	[quote_number] [varchar](32) NULL,
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[sale_status] [smallint] NOT NULL,
	[dinner_table_id] [int] NULL,
	[work_order_number] [varchar](32) NULL,
	[sale_type] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [invoice_number] UNIQUE NONCLUSTERED 
(
	[invoice_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_items]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_items](
	[sale_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[serialnumber] [varchar](30) NULL,
	[line] [int] NOT NULL,
	[quantity_purchased] [decimal](15, 3) NOT NULL,
	[item_cost_price] [decimal](15, 2) NOT NULL,
	[item_unit_price] [decimal](15, 2) NOT NULL,
	[discount] [decimal](15, 2) NOT NULL,
	[discount_type] [smallint] NOT NULL,
	[item_location] [int] NOT NULL,
	[print_option] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC,
	[item_id] ASC,
	[line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_items_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_items_taxes](
	[sale_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[line] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[percent] [decimal](15, 4) NOT NULL,
	[tax_type] [varchar](10) NOT NULL,
	[rounding_code] [varchar](10) NOT NULL,
	[cascade_sequence] [varchar](10) NOT NULL,
	[item_tax_amount] [decimal](15, 4) NOT NULL,
	[sales_tax_code_id] [int] NULL,
	[jurisdiction_id] [int] NULL,
	[tax_category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC,
	[item_id] ASC,
	[line] ASC,
	[name] ASC,
	[percent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_items_taxes_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_items_taxes_temp](
	[sale_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[line] [int] NOT NULL,
	[tax] [decimal](38, 4) NULL,
	[internal_tax] [decimal](38, 4) NULL,
	[sales_tax] [decimal](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_payments]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[sale_id] [int] NOT NULL,
	[payment_type] [varchar](40) NOT NULL,
	[payment_amount] [decimal](15, 2) NOT NULL,
	[cash_refund] [decimal](15, 2) NOT NULL,
	[cash_adjustment] [smallint] NOT NULL,
	[employee_id] [int] NULL,
	[payment_time] [datetime2](0) NOT NULL,
	[reference_code] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_payments_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_payments_temp](
	[sale_id] [int] NOT NULL,
	[sale_payment_amount] [decimal](38, 2) NULL,
	[sale_cash_adjustment] [decimal](38, 2) NULL,
	[sale_cash_refund] [decimal](38, 2) NULL,
	[payment_type] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_reward_points]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_reward_points](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sale_id] [int] NOT NULL,
	[earned] [float] NOT NULL,
	[used] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sales_taxes]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sales_taxes](
	[sales_taxes_id] [int] IDENTITY(1,1) NOT NULL,
	[sale_id] [int] NOT NULL,
	[jurisdiction_id] [int] NULL,
	[tax_category_id] [int] NULL,
	[tax_type] [smallint] NOT NULL,
	[tax_group] [varchar](32) NOT NULL,
	[sale_tax_basis] [decimal](15, 4) NOT NULL,
	[sale_tax_amount] [decimal](15, 4) NOT NULL,
	[print_sequence] [smallint] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[tax_rate] [decimal](15, 4) NOT NULL,
	[sales_tax_code_id] [int] NULL,
	[rounding_code] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sales_taxes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sessions]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sessions](
	[id] [varchar](40) NOT NULL,
	[ip_address] [varchar](45) NOT NULL,
	[timestamp] [int] NOT NULL,
	[data] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_stock_locations]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_stock_locations](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[location_name] [varchar](255) NULL,
	[deleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sumpay_items_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sumpay_items_temp](
	[sale_id] [int] NOT NULL,
	[trans_amount] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sumpay_payments_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sumpay_payments_temp](
	[sale_id] [int] NOT NULL,
	[number_payments] [int] NULL,
	[total_payments] [decimal](38, 2) NULL,
	[total_cash_adjustment] [decimal](38, 2) NULL,
	[total_cash_refund] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_sumpay_taxes_temp]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_sumpay_taxes_temp](
	[sale_id] [int] NOT NULL,
	[total_taxes] [decimal](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_suppliers]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_suppliers](
	[person_id] [int] NOT NULL,
	[company_name] [varchar](255) NOT NULL,
	[agency_name] [varchar](255) NOT NULL,
	[account_number] [varchar](255) NULL,
	[tax_id] [varchar](32) NOT NULL,
	[deleted] [smallint] NOT NULL,
	[category] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [account_number] UNIQUE NONCLUSTERED 
(
	[account_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_tax_categories]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_tax_categories](
	[tax_category_id] [int] IDENTITY(1,1) NOT NULL,
	[tax_category] [varchar](32) NOT NULL,
	[tax_group_sequence] [smallint] NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tax_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_tax_codes]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_tax_codes](
	[tax_code_id] [int] IDENTITY(1,1) NOT NULL,
	[tax_code] [varchar](32) NOT NULL,
	[tax_code_name] [varchar](255) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[state] [varchar](255) NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tax_code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_tax_jurisdictions]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_tax_jurisdictions](
	[jurisdiction_id] [int] IDENTITY(1,1) NOT NULL,
	[jurisdiction_name] [varchar](255) NULL,
	[tax_group] [varchar](32) NOT NULL,
	[tax_type] [smallint] NOT NULL,
	[reporting_authority] [varchar](255) NULL,
	[tax_group_sequence] [smallint] NOT NULL,
	[cascade_sequence] [smallint] NOT NULL,
	[deleted] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[jurisdiction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tax_jurisdictions_uq1] UNIQUE NONCLUSTERED 
(
	[tax_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ospos_tax_rates]    Script Date: 2025/2/2 下午 07:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ospos_tax_rates](
	[tax_rate_id] [int] IDENTITY(1,1) NOT NULL,
	[rate_tax_code_id] [int] NOT NULL,
	[rate_tax_category_id] [int] NOT NULL,
	[rate_jurisdiction_id] [int] NOT NULL,
	[tax_rate] [decimal](15, 4) NOT NULL,
	[tax_rounding_code] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tax_rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ospos_attribute_definitions] ADD  CONSTRAINT [DF__ospos_att__delet__55F4C372]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_attribute_links] ADD  DEFAULT (NULL) FOR [attribute_id]
GO
ALTER TABLE [dbo].[ospos_attribute_links] ADD  DEFAULT (NULL) FOR [item_id]
GO
ALTER TABLE [dbo].[ospos_attribute_links] ADD  DEFAULT (NULL) FOR [sale_id]
GO
ALTER TABLE [dbo].[ospos_attribute_links] ADD  DEFAULT (NULL) FOR [receiving_id]
GO
ALTER TABLE [dbo].[ospos_cash_up] ADD  DEFAULT (getdate()) FOR [open_date]
GO
ALTER TABLE [dbo].[ospos_cash_up] ADD  DEFAULT (NULL) FOR [close_date]
GO
ALTER TABLE [dbo].[ospos_cash_up] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (NULL) FOR [company_name]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (NULL) FOR [account_number]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('1') FOR [taxable]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('') FOR [tax_id]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (NULL) FOR [sales_tax_code_id]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('0.00') FOR [discount]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('0') FOR [discount_type]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (NULL) FOR [package_id]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (NULL) FOR [points]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[ospos_customers] ADD  DEFAULT ('0') FOR [consent]
GO
ALTER TABLE [dbo].[ospos_customers_packages] ADD  DEFAULT (NULL) FOR [package_name]
GO
ALTER TABLE [dbo].[ospos_customers_packages] ADD  DEFAULT ('0') FOR [points_percent]
GO
ALTER TABLE [dbo].[ospos_customers_packages] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_dinner_tables] ADD  DEFAULT ('0') FOR [status]
GO
ALTER TABLE [dbo].[ospos_dinner_tables] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_employees] ADD  CONSTRAINT [DF__ospos_emp__delet__11158940]  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_employees] ADD  CONSTRAINT [DF__ospos_emp__hash___1209AD79]  DEFAULT ('2') FOR [hash_version]
GO
ALTER TABLE [dbo].[ospos_employees] ADD  CONSTRAINT [DF__ospos_emp__langu__12FDD1B2]  DEFAULT (NULL) FOR [language]
GO
ALTER TABLE [dbo].[ospos_employees] ADD  CONSTRAINT [DF__ospos_emp__langu__13F1F5EB]  DEFAULT (NULL) FOR [language_code]
GO
ALTER TABLE [dbo].[ospos_expense_categories] ADD  DEFAULT (NULL) FOR [category_name]
GO
ALTER TABLE [dbo].[ospos_expense_categories] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_expenses] ADD  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[ospos_expenses] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_expenses] ADD  DEFAULT (NULL) FOR [supplier_tax_code]
GO
ALTER TABLE [dbo].[ospos_expenses] ADD  DEFAULT (NULL) FOR [tax_amount]
GO
ALTER TABLE [dbo].[ospos_expenses] ADD  DEFAULT (NULL) FOR [supplier_id]
GO
ALTER TABLE [dbo].[ospos_giftcards] ADD  DEFAULT (getdate()) FOR [record_time]
GO
ALTER TABLE [dbo].[ospos_giftcards] ADD  DEFAULT (NULL) FOR [giftcard_number]
GO
ALTER TABLE [dbo].[ospos_giftcards] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_giftcards] ADD  DEFAULT (NULL) FOR [person_id]
GO
ALTER TABLE [dbo].[ospos_grants] ADD  DEFAULT ('home') FOR [menu_group]
GO
ALTER TABLE [dbo].[ospos_inventory] ADD  DEFAULT ('0') FOR [trans_items]
GO
ALTER TABLE [dbo].[ospos_inventory] ADD  DEFAULT ('0') FOR [trans_user]
GO
ALTER TABLE [dbo].[ospos_inventory] ADD  DEFAULT (getdate()) FOR [trans_date]
GO
ALTER TABLE [dbo].[ospos_inventory] ADD  DEFAULT ('0.000') FOR [trans_inventory]
GO
ALTER TABLE [dbo].[ospos_item_kit_items] ADD  DEFAULT ('0') FOR [kit_sequence]
GO
ALTER TABLE [dbo].[ospos_item_kits] ADD  CONSTRAINT [DF__ospos_ite__item___693CA210]  DEFAULT ((0)) FOR [item_id]
GO
ALTER TABLE [dbo].[ospos_item_kits] ADD  CONSTRAINT [DF__ospos_ite__kit_d__6A30C649]  DEFAULT ((0.00)) FOR [kit_discount]
GO
ALTER TABLE [dbo].[ospos_item_kits] ADD  CONSTRAINT [DF__ospos_ite__price__6B24EA82]  DEFAULT ((0)) FOR [price_option]
GO
ALTER TABLE [dbo].[ospos_item_kits] ADD  CONSTRAINT [DF__ospos_ite__print__6C190EBB]  DEFAULT ((0)) FOR [print_option]
GO
ALTER TABLE [dbo].[ospos_item_quantities] ADD  DEFAULT ('0.000') FOR [quantity]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__suppl__5441852A]  DEFAULT (NULL) FOR [supplier_id]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__item___5535A963]  DEFAULT (NULL) FOR [item_number]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__reord__5629CD9C]  DEFAULT ('0') FOR [reorder_level]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__recei__571DF1D5]  DEFAULT ('1') FOR [receiving_quantity]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__pic_f__5812160E]  DEFAULT (NULL) FOR [pic_filename]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__stock__59063A47]  DEFAULT ((0)) FOR [stock_type]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__item___59FA5E80]  DEFAULT ((0)) FOR [item_type]
GO
ALTER TABLE [dbo].[ospos_items] ADD  CONSTRAINT [DF__ospos_ite__delet__5AEE82B9]  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_migrations] ADD  DEFAULT (NULL) FOR [sale_id]
GO
ALTER TABLE [dbo].[ospos_migrations] ADD  DEFAULT (NULL) FOR [receiving_id]
GO
ALTER TABLE [dbo].[ospos_people] ADD  DEFAULT (NULL) FOR [gender]
GO
ALTER TABLE [dbo].[ospos_permissions] ADD  DEFAULT (NULL) FOR [location_id]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT (getdate()) FOR [receiving_time]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT (NULL) FOR [supplier_id]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT ('0') FOR [employee_id]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT (NULL) FOR [comment]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT (NULL) FOR [payment_type]
GO
ALTER TABLE [dbo].[ospos_receivings] ADD  DEFAULT (NULL) FOR [reference]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('0') FOR [receiving_id]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('0') FOR [item_id]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT (NULL) FOR [serialnumber]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('0.000') FOR [quantity_purchased]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('0.00') FOR [discount]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('0') FOR [discount_type]
GO
ALTER TABLE [dbo].[ospos_receivings_items] ADD  DEFAULT ('1.000') FOR [receiving_quantity]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (getdate()) FOR [sale_time]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (NULL) FOR [customer_id]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT ('0') FOR [employee_id]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (NULL) FOR [comment]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (NULL) FOR [invoice_number]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (NULL) FOR [quote_number]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT ((0)) FOR [sale_status]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT (NULL) FOR [work_order_number]
GO
ALTER TABLE [dbo].[ospos_sales] ADD  DEFAULT ((0)) FOR [sale_type]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0') FOR [sale_id]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0') FOR [item_id]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT (NULL) FOR [serialnumber]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0') FOR [line]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0.000') FOR [quantity_purchased]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0.00') FOR [discount]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0') FOR [discount_type]
GO
ALTER TABLE [dbo].[ospos_sales_items] ADD  DEFAULT ('0') FOR [print_option]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0') FOR [line]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0.0000') FOR [percent]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0') FOR [tax_type]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0') FOR [rounding_code]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0') FOR [cascade_sequence]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT ('0.0000') FOR [item_tax_amount]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT (NULL) FOR [sales_tax_code_id]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT (NULL) FOR [jurisdiction_id]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[ospos_sales_payments] ADD  DEFAULT ('0.00') FOR [cash_refund]
GO
ALTER TABLE [dbo].[ospos_sales_payments] ADD  DEFAULT ('0') FOR [cash_adjustment]
GO
ALTER TABLE [dbo].[ospos_sales_payments] ADD  DEFAULT (NULL) FOR [employee_id]
GO
ALTER TABLE [dbo].[ospos_sales_payments] ADD  DEFAULT (getdate()) FOR [payment_time]
GO
ALTER TABLE [dbo].[ospos_sales_payments] ADD  DEFAULT ('') FOR [reference_code]
GO
ALTER TABLE [dbo].[ospos_sales_taxes] ADD  DEFAULT (NULL) FOR [jurisdiction_id]
GO
ALTER TABLE [dbo].[ospos_sales_taxes] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[ospos_sales_taxes] ADD  DEFAULT ('0') FOR [print_sequence]
GO
ALTER TABLE [dbo].[ospos_sales_taxes] ADD  DEFAULT (NULL) FOR [sales_tax_code_id]
GO
ALTER TABLE [dbo].[ospos_sales_taxes] ADD  DEFAULT ('0') FOR [rounding_code]
GO
ALTER TABLE [dbo].[ospos_sessions] ADD  CONSTRAINT [DF__ospos_ses__times__4242D080]  DEFAULT ('0') FOR [timestamp]
GO
ALTER TABLE [dbo].[ospos_stock_locations] ADD  DEFAULT (NULL) FOR [location_name]
GO
ALTER TABLE [dbo].[ospos_stock_locations] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_suppliers] ADD  DEFAULT (NULL) FOR [account_number]
GO
ALTER TABLE [dbo].[ospos_suppliers] ADD  DEFAULT ('') FOR [tax_id]
GO
ALTER TABLE [dbo].[ospos_suppliers] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_tax_categories] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_tax_codes] ADD  DEFAULT ('') FOR [tax_code_name]
GO
ALTER TABLE [dbo].[ospos_tax_codes] ADD  DEFAULT ('') FOR [city]
GO
ALTER TABLE [dbo].[ospos_tax_codes] ADD  DEFAULT ('') FOR [state]
GO
ALTER TABLE [dbo].[ospos_tax_codes] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_tax_jurisdictions] ADD  DEFAULT (NULL) FOR [jurisdiction_name]
GO
ALTER TABLE [dbo].[ospos_tax_jurisdictions] ADD  DEFAULT (NULL) FOR [reporting_authority]
GO
ALTER TABLE [dbo].[ospos_tax_jurisdictions] ADD  DEFAULT ('0') FOR [tax_group_sequence]
GO
ALTER TABLE [dbo].[ospos_tax_jurisdictions] ADD  DEFAULT ('0') FOR [cascade_sequence]
GO
ALTER TABLE [dbo].[ospos_tax_jurisdictions] ADD  DEFAULT ('0') FOR [deleted]
GO
ALTER TABLE [dbo].[ospos_tax_rates] ADD  DEFAULT ('0.0000') FOR [tax_rate]
GO
ALTER TABLE [dbo].[ospos_tax_rates] ADD  DEFAULT ('0') FOR [tax_rounding_code]
GO
ALTER TABLE [dbo].[ospos_attribute_definitions]  WITH CHECK ADD  CONSTRAINT [fk_ospos_attribute_definitions_ibfk_1] FOREIGN KEY([definition_fk])
REFERENCES [dbo].[ospos_attribute_definitions] ([definition_id])
GO
ALTER TABLE [dbo].[ospos_attribute_definitions] CHECK CONSTRAINT [fk_ospos_attribute_definitions_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_attribute_links]  WITH CHECK ADD  CONSTRAINT [ospos_attribute_links_ibfk_1] FOREIGN KEY([definition_id])
REFERENCES [dbo].[ospos_attribute_definitions] ([definition_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_attribute_links] CHECK CONSTRAINT [ospos_attribute_links_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_attribute_links]  WITH CHECK ADD  CONSTRAINT [ospos_attribute_links_ibfk_2] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[ospos_attribute_values] ([attribute_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_attribute_links] CHECK CONSTRAINT [ospos_attribute_links_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_attribute_links]  WITH CHECK ADD  CONSTRAINT [ospos_attribute_links_ibfk_3] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_attribute_links] CHECK CONSTRAINT [ospos_attribute_links_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_attribute_links]  WITH CHECK ADD  CONSTRAINT [ospos_attribute_links_ibfk_4] FOREIGN KEY([receiving_id])
REFERENCES [dbo].[ospos_receivings] ([receiving_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_attribute_links] CHECK CONSTRAINT [ospos_attribute_links_ibfk_4]
GO
ALTER TABLE [dbo].[ospos_attribute_links]  WITH CHECK ADD  CONSTRAINT [ospos_attribute_links_ibfk_5] FOREIGN KEY([sale_id])
REFERENCES [dbo].[ospos_sales] ([sale_id])
GO
ALTER TABLE [dbo].[ospos_attribute_links] CHECK CONSTRAINT [ospos_attribute_links_ibfk_5]
GO
ALTER TABLE [dbo].[ospos_cash_up]  WITH CHECK ADD  CONSTRAINT [ospos_cash_up_ibfk_1] FOREIGN KEY([open_employee_id])
REFERENCES [dbo].[ospos_employees] ([person_id])
GO
ALTER TABLE [dbo].[ospos_cash_up] CHECK CONSTRAINT [ospos_cash_up_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_cash_up]  WITH CHECK ADD  CONSTRAINT [ospos_cash_up_ibfk_2] FOREIGN KEY([close_employee_id])
REFERENCES [dbo].[ospos_employees] ([person_id])
GO
ALTER TABLE [dbo].[ospos_cash_up] CHECK CONSTRAINT [ospos_cash_up_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_customers]  WITH CHECK ADD  CONSTRAINT [ospos_customers_ibfk_1] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_people] ([person_id])
GO
ALTER TABLE [dbo].[ospos_customers] CHECK CONSTRAINT [ospos_customers_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_customers]  WITH CHECK ADD  CONSTRAINT [ospos_customers_ibfk_2] FOREIGN KEY([package_id])
REFERENCES [dbo].[ospos_customers_packages] ([package_id])
GO
ALTER TABLE [dbo].[ospos_customers] CHECK CONSTRAINT [ospos_customers_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_customers]  WITH CHECK ADD  CONSTRAINT [ospos_customers_ibfk_3] FOREIGN KEY([sales_tax_code_id])
REFERENCES [dbo].[ospos_tax_codes] ([tax_code_id])
GO
ALTER TABLE [dbo].[ospos_customers] CHECK CONSTRAINT [ospos_customers_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_customers_points]  WITH CHECK ADD  CONSTRAINT [ospos_customers_points_ibfk_1] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_customers] ([person_id])
GO
ALTER TABLE [dbo].[ospos_customers_points] CHECK CONSTRAINT [ospos_customers_points_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_customers_points]  WITH CHECK ADD  CONSTRAINT [ospos_customers_points_ibfk_2] FOREIGN KEY([package_id])
REFERENCES [dbo].[ospos_customers_packages] ([package_id])
GO
ALTER TABLE [dbo].[ospos_customers_points] CHECK CONSTRAINT [ospos_customers_points_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_customers_points]  WITH CHECK ADD  CONSTRAINT [ospos_customers_points_ibfk_3] FOREIGN KEY([sale_id])
REFERENCES [dbo].[ospos_sales] ([sale_id])
GO
ALTER TABLE [dbo].[ospos_customers_points] CHECK CONSTRAINT [ospos_customers_points_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_employees]  WITH CHECK ADD  CONSTRAINT [ospos_employees_ibfk_1] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_people] ([person_id])
GO
ALTER TABLE [dbo].[ospos_employees] CHECK CONSTRAINT [ospos_employees_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_expenses]  WITH CHECK ADD  CONSTRAINT [ospos_expenses_ibfk_1] FOREIGN KEY([expense_category_id])
REFERENCES [dbo].[ospos_expense_categories] ([expense_category_id])
GO
ALTER TABLE [dbo].[ospos_expenses] CHECK CONSTRAINT [ospos_expenses_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_expenses]  WITH CHECK ADD  CONSTRAINT [ospos_expenses_ibfk_2] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ospos_employees] ([person_id])
GO
ALTER TABLE [dbo].[ospos_expenses] CHECK CONSTRAINT [ospos_expenses_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_expenses]  WITH CHECK ADD  CONSTRAINT [ospos_expenses_ibfk_3] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[ospos_suppliers] ([person_id])
GO
ALTER TABLE [dbo].[ospos_expenses] CHECK CONSTRAINT [ospos_expenses_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_giftcards]  WITH CHECK ADD  CONSTRAINT [ospos_giftcards_ibfk_1] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_people] ([person_id])
GO
ALTER TABLE [dbo].[ospos_giftcards] CHECK CONSTRAINT [ospos_giftcards_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_grants]  WITH CHECK ADD  CONSTRAINT [ospos_grants_ibfk_1] FOREIGN KEY([permission_id])
REFERENCES [dbo].[ospos_permissions] ([permission_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_grants] CHECK CONSTRAINT [ospos_grants_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_grants]  WITH CHECK ADD  CONSTRAINT [ospos_grants_ibfk_2] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_employees] ([person_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_grants] CHECK CONSTRAINT [ospos_grants_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_inventory]  WITH CHECK ADD  CONSTRAINT [ospos_inventory_ibfk_1] FOREIGN KEY([trans_items])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_inventory] CHECK CONSTRAINT [ospos_inventory_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_inventory]  WITH CHECK ADD  CONSTRAINT [ospos_inventory_ibfk_2] FOREIGN KEY([trans_user])
REFERENCES [dbo].[ospos_employees] ([person_id])
GO
ALTER TABLE [dbo].[ospos_inventory] CHECK CONSTRAINT [ospos_inventory_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_inventory]  WITH CHECK ADD  CONSTRAINT [ospos_inventory_ibfk_3] FOREIGN KEY([trans_location])
REFERENCES [dbo].[ospos_stock_locations] ([location_id])
GO
ALTER TABLE [dbo].[ospos_inventory] CHECK CONSTRAINT [ospos_inventory_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_item_kit_items]  WITH CHECK ADD  CONSTRAINT [ospos_item_kit_items_ibfk_1] FOREIGN KEY([item_kit_id])
REFERENCES [dbo].[ospos_item_kits] ([item_kit_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_item_kit_items] CHECK CONSTRAINT [ospos_item_kit_items_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_item_kit_items]  WITH CHECK ADD  CONSTRAINT [ospos_item_kit_items_ibfk_2] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_item_kit_items] CHECK CONSTRAINT [ospos_item_kit_items_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_item_quantities]  WITH CHECK ADD  CONSTRAINT [ospos_item_quantities_ibfk_1] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_item_quantities] CHECK CONSTRAINT [ospos_item_quantities_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_item_quantities]  WITH CHECK ADD  CONSTRAINT [ospos_item_quantities_ibfk_2] FOREIGN KEY([location_id])
REFERENCES [dbo].[ospos_stock_locations] ([location_id])
GO
ALTER TABLE [dbo].[ospos_item_quantities] CHECK CONSTRAINT [ospos_item_quantities_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_items_taxes]  WITH CHECK ADD  CONSTRAINT [ospos_items_taxes_ibfk_1] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ospos_items_taxes] CHECK CONSTRAINT [ospos_items_taxes_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_receivings_items]  WITH CHECK ADD  CONSTRAINT [ospos_receivings_items_ibfk_1] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_receivings_items] CHECK CONSTRAINT [ospos_receivings_items_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_receivings_items]  WITH CHECK ADD  CONSTRAINT [ospos_receivings_items_ibfk_2] FOREIGN KEY([receiving_id])
REFERENCES [dbo].[ospos_receivings] ([receiving_id])
GO
ALTER TABLE [dbo].[ospos_receivings_items] CHECK CONSTRAINT [ospos_receivings_items_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_sales_items]  WITH CHECK ADD  CONSTRAINT [ospos_sales_items_ibfk_1] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_sales_items] CHECK CONSTRAINT [ospos_sales_items_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_sales_items]  WITH CHECK ADD  CONSTRAINT [ospos_sales_items_ibfk_2] FOREIGN KEY([sale_id])
REFERENCES [dbo].[ospos_sales] ([sale_id])
GO
ALTER TABLE [dbo].[ospos_sales_items] CHECK CONSTRAINT [ospos_sales_items_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_sales_items]  WITH CHECK ADD  CONSTRAINT [ospos_sales_items_ibfk_3] FOREIGN KEY([item_location])
REFERENCES [dbo].[ospos_stock_locations] ([location_id])
GO
ALTER TABLE [dbo].[ospos_sales_items] CHECK CONSTRAINT [ospos_sales_items_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes]  WITH CHECK ADD  CONSTRAINT [ospos_sales_items_taxes_ibfk_2] FOREIGN KEY([item_id])
REFERENCES [dbo].[ospos_items] ([item_id])
GO
ALTER TABLE [dbo].[ospos_sales_items_taxes] CHECK CONSTRAINT [ospos_sales_items_taxes_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_sales_payments]  WITH CHECK ADD  CONSTRAINT [ospos_sales_payments_ibfk_1] FOREIGN KEY([sale_id])
REFERENCES [dbo].[ospos_sales] ([sale_id])
GO
ALTER TABLE [dbo].[ospos_sales_payments] CHECK CONSTRAINT [ospos_sales_payments_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_sales_payments]  WITH CHECK ADD  CONSTRAINT [ospos_sales_payments_ibfk_2] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ospos_employees] ([person_id])
GO
ALTER TABLE [dbo].[ospos_sales_payments] CHECK CONSTRAINT [ospos_sales_payments_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_sales_reward_points]  WITH CHECK ADD  CONSTRAINT [ospos_sales_reward_points_ibfk_1] FOREIGN KEY([sale_id])
REFERENCES [dbo].[ospos_sales] ([sale_id])
GO
ALTER TABLE [dbo].[ospos_sales_reward_points] CHECK CONSTRAINT [ospos_sales_reward_points_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_suppliers]  WITH CHECK ADD  CONSTRAINT [ospos_suppliers_ibfk_1] FOREIGN KEY([person_id])
REFERENCES [dbo].[ospos_people] ([person_id])
GO
ALTER TABLE [dbo].[ospos_suppliers] CHECK CONSTRAINT [ospos_suppliers_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_tax_rates]  WITH CHECK ADD  CONSTRAINT [ospos_tax_rates_ibfk_1] FOREIGN KEY([rate_tax_category_id])
REFERENCES [dbo].[ospos_tax_categories] ([tax_category_id])
GO
ALTER TABLE [dbo].[ospos_tax_rates] CHECK CONSTRAINT [ospos_tax_rates_ibfk_1]
GO
ALTER TABLE [dbo].[ospos_tax_rates]  WITH CHECK ADD  CONSTRAINT [ospos_tax_rates_ibfk_2] FOREIGN KEY([rate_tax_code_id])
REFERENCES [dbo].[ospos_tax_codes] ([tax_code_id])
GO
ALTER TABLE [dbo].[ospos_tax_rates] CHECK CONSTRAINT [ospos_tax_rates_ibfk_2]
GO
ALTER TABLE [dbo].[ospos_tax_rates]  WITH CHECK ADD  CONSTRAINT [ospos_tax_rates_ibfk_3] FOREIGN KEY([rate_jurisdiction_id])
REFERENCES [dbo].[ospos_tax_jurisdictions] ([jurisdiction_id])
GO
ALTER TABLE [dbo].[ospos_tax_rates] CHECK CONSTRAINT [ospos_tax_rates_ibfk_3]
GO
ALTER TABLE [dbo].[ospos_sessions]  WITH CHECK ADD  CONSTRAINT [CK__ospos_ses__times__414EAC47] CHECK  (([timestamp]>(0)))
GO
ALTER TABLE [dbo].[ospos_sessions] CHECK CONSTRAINT [CK__ospos_ses__times__414EAC47]
GO
