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
	END
FROM
	[Products] [t1]
WHERE
	[t1].[Discontinued] = 1

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [product].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
	[product].[ProductID],
	[product].[ProductName],
	[product].[SupplierID],
	[product].[CategoryID],
	[product].[QuantityPerUnit],
	[product].[UnitPrice],
	[product].[UnitsInStock],
	[product].[UnitsOnOrder],
	[product].[ReorderLevel],
	[product].[Discontinued],
	CASE
		WHEN [product].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
	[product].[ProductName]
FROM
	[Products] [product]
WHERE
	[product].[Discontinued] = 1

