BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
	[p].[ReorderLevel],
	CASE
		WHEN [p].[Discontinued] = 1 THEN [p].[ProductName]
		ELSE NULL
	END
FROM
	[Products] [p]

