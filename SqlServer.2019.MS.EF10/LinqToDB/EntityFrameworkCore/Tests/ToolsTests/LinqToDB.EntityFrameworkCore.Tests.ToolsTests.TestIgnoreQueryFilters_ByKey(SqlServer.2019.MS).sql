Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p3='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[PeriodEnd], [p].[PeriodStart], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@ef_filter__p1 = CAST(1 AS bit) OR [p].[ProductID] > 2) AND (@ef_filter__p3 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit))


-- SqlServer.2019

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[ProductID] > 2 AND [e].[IsDeleted] = 0



