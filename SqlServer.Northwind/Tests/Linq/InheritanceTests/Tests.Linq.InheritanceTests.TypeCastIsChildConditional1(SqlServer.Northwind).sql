-- SqlServer.Northwind SqlServer.2019

SELECT
	[x].[Discontinued],
	[x].[ProductID],
	[x].[ProductName],
	[x].[SupplierID],
	[x].[CategoryID],
	[x].[QuantityPerUnit],
	[x].[UnitPrice],
	[x].[UnitsInStock],
	[x].[UnitsOnOrder],
	[x].[ReorderLevel]
FROM
	[Products] [x]

-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]

