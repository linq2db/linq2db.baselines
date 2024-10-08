BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [x].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
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

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

