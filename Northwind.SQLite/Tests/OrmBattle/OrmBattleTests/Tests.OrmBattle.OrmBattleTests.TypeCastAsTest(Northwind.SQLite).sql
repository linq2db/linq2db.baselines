BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]
WHERE
	[t1].[Discontinued] = 1

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[product].[ProductID],
	[product].[ProductName],
	[product].[SupplierID],
	[product].[CategoryID],
	[product].[QuantityPerUnit],
	[product].[UnitPrice],
	[product].[UnitsInStock],
	[product].[UnitsOnOrder],
	[product].[ReorderLevel],
	[product].[Discontinued]
FROM
	[Products] [product]
WHERE
	[product].[Discontinued] = 1

