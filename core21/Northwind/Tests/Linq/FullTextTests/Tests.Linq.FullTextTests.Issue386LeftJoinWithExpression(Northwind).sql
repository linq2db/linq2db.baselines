BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[t].[ProductID], 
	[t].[ProductName], 
	[t].[SupplierID], 
	[t].[CategoryID], 
	[t].[QuantityPerUnit], 
	[t].[UnitPrice], 
	[t].[UnitsInStock], 
	[t].[UnitsOnOrder], 
	[t].[ReorderLevel], 
	[t].[Discontinued]
FROM
	[Products] [t]
		LEFT JOIN FREETEXTTABLE([Categories], ([Description]), N'sweetest candy bread and dry meat') [f] ON [f].[KEY] = [t].[CategoryID]
ORDER BY
	[t].[ProductName] DESC

