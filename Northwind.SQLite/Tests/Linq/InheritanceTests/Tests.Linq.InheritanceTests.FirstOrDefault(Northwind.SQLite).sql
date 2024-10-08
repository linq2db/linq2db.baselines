BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t1].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued],
	CASE
		WHEN [t1].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
	[t1].[Discontinued]
FROM
	[Products] [t1]
WHERE
	[t1].[Discontinued] = 1
LIMIT 1

