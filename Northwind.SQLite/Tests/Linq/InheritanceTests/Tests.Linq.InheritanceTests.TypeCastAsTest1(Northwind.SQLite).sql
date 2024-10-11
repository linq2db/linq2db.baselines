BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued],
	CASE
		WHEN [p].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
	[p].[ProductName]
FROM
	[Products] [p]
WHERE
	[p].[Discontinued] = 1

