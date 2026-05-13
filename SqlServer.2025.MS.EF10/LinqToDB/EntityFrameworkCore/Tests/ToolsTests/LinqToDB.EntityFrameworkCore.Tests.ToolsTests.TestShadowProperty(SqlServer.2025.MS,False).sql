Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT [p].[QuantityPerUnit] AS [Quantity]
FROM [Products] AS [p]
WHERE (@ef_filter__p1 = CAST(1 AS bit) OR [p].[ProductID] > 2) AND (@ef_filter__p1 = CAST(1 AS bit) OR [p].[Discontinued] = CAST(0 AS bit)) AND (@ef_filter__p5 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit))


-- SqlServer.2025

SELECT
	[p].[QuantityPerUnit]
FROM
	[Products] [p]



