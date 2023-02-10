BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued]
FROM
	[Products] [p]
WHERE
	[p].[Discontinued] = 1

