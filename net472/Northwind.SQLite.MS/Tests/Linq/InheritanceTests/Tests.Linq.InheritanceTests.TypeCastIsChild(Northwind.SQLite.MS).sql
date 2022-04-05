BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[x].[ProductID],
	[x].[ProductName],
	[x].[SupplierID],
	[x].[CategoryID],
	[x].[QuantityPerUnit],
	[x].[UnitPrice],
	[x].[UnitsInStock],
	[x].[UnitsOnOrder],
	[x].[ReorderLevel],
	[x].[Discontinued]
FROM
	[Products] [x]
WHERE
	[x].[Discontinued] = 1

