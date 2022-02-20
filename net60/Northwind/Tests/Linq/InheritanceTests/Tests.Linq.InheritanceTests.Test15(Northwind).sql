BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[p].[Discontinued],
	[p].[ReorderLevel],
	[p].[UnitsOnOrder],
	[p].[UnitsInStock],
	[p].[UnitPrice],
	[p].[QuantityPerUnit],
	[p].[CategoryID],
	[p].[SupplierID],
	[p].[ProductName],
	[p].[ProductID]
FROM
	[Products] [p]
WHERE
	[p].[Discontinued] = 1

BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]

