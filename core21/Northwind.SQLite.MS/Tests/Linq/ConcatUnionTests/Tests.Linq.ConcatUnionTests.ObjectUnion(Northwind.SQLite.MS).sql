BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	[t1].[p],
	[t1].[ProductName],
	[t1].[p_1],
	[t1].[p_2],
	[t1].[p_3],
	[t1].[p_4],
	[t1].[p_5],
	[t1].[p_6],
	[t1].[p_7],
	[t1].[p_8],
	[t1].[CategoryName],
	[t1].[ProductName_1]
FROM
	(
		SELECT
			[p].[ProductID] as [p],
			[p].[ProductName],
			[p].[SupplierID] as [p_1],
			[p].[CategoryID] as [p_2],
			[p].[QuantityPerUnit] as [p_3],
			[p].[UnitPrice] as [p_4],
			[p].[UnitsInStock] as [p_5],
			[p].[UnitsOnOrder] as [p_6],
			[p].[ReorderLevel] as [p_7],
			[p].[Discontinued] as [p_8],
			[g_1].[CategoryName],
			[p].[ProductName] as [ProductName_1]
		FROM
			[Products] [p]
				LEFT JOIN [Categories] [g_1] ON [p].[CategoryID] = [g_1].[CategoryID]
		UNION
		SELECT
			[p_1].[ProductID] as [p],
			[p_1].[ProductName],
			[p_1].[SupplierID] as [p_1],
			[p_1].[CategoryID] as [p_2],
			[p_1].[QuantityPerUnit] as [p_3],
			[p_1].[UnitPrice] as [p_4],
			[p_1].[UnitsInStock] as [p_5],
			[p_1].[UnitsOnOrder] as [p_6],
			[p_1].[ReorderLevel] as [p_7],
			[p_1].[Discontinued] as [p_8],
			[g_2].[CategoryName],
			[p_1].[ProductName] as [ProductName_1]
		FROM
			[Products] [p_1]
				LEFT JOIN [Categories] [g_2] ON [p_1].[CategoryID] = [g_2].[CategoryID]
	) [t1]
LIMIT @take

