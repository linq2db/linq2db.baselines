Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT [p].[QuantityPerUnit] AS [Quantity]
FROM [Products] AS [p]
WHERE @ef_filter__p0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2019

SELECT
	[p].[QuantityPerUnit]
FROM
	[Products] [p]
WHERE
	[p].[IsDeleted] = 0



