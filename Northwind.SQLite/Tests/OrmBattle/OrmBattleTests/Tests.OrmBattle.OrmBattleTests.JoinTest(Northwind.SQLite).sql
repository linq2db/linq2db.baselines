﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[p].[ProductName],
	[a_Supplier].[ContactName],
	[a_Supplier].[Phone]
FROM
	[Products] [p]
		INNER JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]

