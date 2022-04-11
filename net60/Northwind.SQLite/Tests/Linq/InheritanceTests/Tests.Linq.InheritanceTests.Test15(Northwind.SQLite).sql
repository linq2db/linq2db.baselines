BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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

