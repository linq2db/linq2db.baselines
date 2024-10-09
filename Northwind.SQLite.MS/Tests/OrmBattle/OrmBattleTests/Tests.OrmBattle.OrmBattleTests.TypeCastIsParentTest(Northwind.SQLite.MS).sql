BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
	[p].[Discontinued]
FROM
	[Products] [p]

