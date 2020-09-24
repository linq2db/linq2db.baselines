BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
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
			[p_9].[ProductID] as [p],
			[p_9].[ProductName],
			[p_9].[SupplierID] as [p_1],
			[p_9].[CategoryID] as [p_2],
			[p_9].[QuantityPerUnit] as [p_3],
			[p_9].[UnitPrice] as [p_4],
			[p_9].[UnitsInStock] as [p_5],
			[p_9].[UnitsOnOrder] as [p_6],
			[p_9].[ReorderLevel] as [p_7],
			[p_9].[Discontinued] as [p_8],
			[g_1].[CategoryName],
			[p_9].[ProductName] as [ProductName_1]
		FROM
			[Products] [p_9]
				LEFT JOIN [Categories] [g_1] ON [p_9].[CategoryID] = [g_1].[CategoryID]
		UNION
		SELECT
			[p_10].[ProductID] as [p],
			[p_10].[ProductName],
			[p_10].[SupplierID] as [p_1],
			[p_10].[CategoryID] as [p_2],
			[p_10].[QuantityPerUnit] as [p_3],
			[p_10].[UnitPrice] as [p_4],
			[p_10].[UnitsInStock] as [p_5],
			[p_10].[UnitsOnOrder] as [p_6],
			[p_10].[ReorderLevel] as [p_7],
			[p_10].[Discontinued] as [p_8],
			[g_2].[CategoryName],
			[p_10].[ProductName] as [ProductName_1]
		FROM
			[Products] [p_10]
				LEFT JOIN [Categories] [g_2] ON [p_10].[CategoryID] = [g_2].[CategoryID]
	) [t1]
LIMIT @take

