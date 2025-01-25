BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[p].[ProductName],
	[s].[ContactName],
	[s].[Phone]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]
		INNER JOIN [Suppliers] [s] ON [a_Supplier].[SupplierID] = [s].[SupplierID]

