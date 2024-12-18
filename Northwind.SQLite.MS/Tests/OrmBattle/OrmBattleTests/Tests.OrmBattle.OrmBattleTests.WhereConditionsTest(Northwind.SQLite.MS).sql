BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[Discontinued],
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel]
FROM
	[Products] [p]
WHERE
	[p].[UnitsInStock] < [p].[ReorderLevel] AND
	[p].[UnitsInStock] IS NOT NULL AND
	[p].[ReorderLevel] IS NOT NULL AND
	[p].[UnitsOnOrder] = 0 AND
	[p].[UnitsOnOrder] IS NOT NULL

