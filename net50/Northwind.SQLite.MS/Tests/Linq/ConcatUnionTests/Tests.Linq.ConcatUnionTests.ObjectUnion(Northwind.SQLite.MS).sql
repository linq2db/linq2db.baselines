BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
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
	[g_1].[CategoryName],
	[p].[ProductName]
FROM
	[Products] [p]
		LEFT JOIN [Categories] [g_1] ON [p].[CategoryID] = [g_1].[CategoryID]
UNION
SELECT
	[p_1].[ProductID],
	[p_1].[ProductName],
	[p_1].[SupplierID],
	[p_1].[CategoryID],
	[p_1].[QuantityPerUnit],
	[p_1].[UnitPrice],
	[p_1].[UnitsInStock],
	[p_1].[UnitsOnOrder],
	[p_1].[ReorderLevel],
	[p_1].[Discontinued],
	[g_2].[CategoryName],
	[p_1].[ProductName]
FROM
	[Products] [p_1]
		LEFT JOIN [Categories] [g_2] ON [p_1].[CategoryID] = [g_2].[CategoryID]

