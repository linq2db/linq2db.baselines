-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[CategoryName],
	[t1].[ProductName_1]
FROM
	(
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
			[c_1].[CategoryName],
			[p].[ProductName] as [ProductName_1]
		FROM
			[Products] [p]
				LEFT JOIN [Categories] [c_1] ON [p].[CategoryID] = [c_1].[CategoryID]
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
			[c_2].[CategoryName],
			[p_1].[ProductName] as [ProductName_1]
		FROM
			[Products] [p_1]
				LEFT JOIN [Categories] [c_2] ON [p_1].[CategoryID] = [c_2].[CategoryID]
	) [t1]

