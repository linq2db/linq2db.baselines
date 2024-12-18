BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[ProductName],
	[s].[ContactName],
	[s].[Phone]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID] AND [p].[SupplierID] IS NOT NULL
		INNER JOIN [Suppliers] [s] ON [a_Supplier].[SupplierID] = [s].[SupplierID]

