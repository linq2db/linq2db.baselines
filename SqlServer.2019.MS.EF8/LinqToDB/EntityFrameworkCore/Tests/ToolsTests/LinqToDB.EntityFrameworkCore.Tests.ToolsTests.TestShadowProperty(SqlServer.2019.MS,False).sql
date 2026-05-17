Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[QuantityPerUnit] AS [Quantity]
FROM [Products] AS [p]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2019

SELECT
	[p].[QuantityPerUnit]
FROM
	[Products] [p]



