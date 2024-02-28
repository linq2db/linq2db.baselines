BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[x].[ProductID],
	[x].[ProductName],
	[x].[SupplierID],
	[x].[CategoryID],
	[x].[QuantityPerUnit],
	[x].[UnitPrice],
	[x].[UnitsInStock],
	[x].[UnitsOnOrder],
	[x].[ReorderLevel],
	[x].[Discontinued]
FROM
	[Products] [x]
WHERE
	[x].[Discontinued] = 1

