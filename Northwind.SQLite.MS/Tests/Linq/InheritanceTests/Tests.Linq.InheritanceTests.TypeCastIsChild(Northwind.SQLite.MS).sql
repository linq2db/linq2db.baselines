BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [x].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
	[x].[ProductID],
	[x].[ProductName],
	[x].[SupplierID],
	[x].[CategoryID],
	[x].[QuantityPerUnit],
	[x].[UnitPrice],
	[x].[UnitsInStock],
	[x].[UnitsOnOrder],
	[x].[ReorderLevel],
	[x].[Discontinued],
	CASE
		WHEN [x].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
	[x].[Discontinued]
FROM
	[Products] [x]
WHERE
	[x].[Discontinued] = 1

