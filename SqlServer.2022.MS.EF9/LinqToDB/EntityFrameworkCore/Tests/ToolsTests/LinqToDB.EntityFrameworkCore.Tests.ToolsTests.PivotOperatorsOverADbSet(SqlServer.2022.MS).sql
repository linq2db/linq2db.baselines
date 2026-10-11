-- SqlServer.2022
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[e].[ProductID] as [ProductId]
		FROM
			[Products] [e]
		WHERE
			[e].[UnitsInStock] IS NOT NULL
		UNION ALL
		SELECT
			[e_1].[ProductID] as [ProductId]
		FROM
			[Products] [e_1]
		WHERE
			[e_1].[UnitsOnOrder] IS NOT NULL
	) [t1]



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND [p].[UnitsInStock] IS NOT NULL


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND [p].[UnitsOnOrder] IS NOT NULL


-- SqlServer.2022
SELECT
	[e].[SupplierID],
	COUNT(IIF([e].[Discontinued] = 0, 1, NULL)),
	COUNT(IIF([e].[Discontinued] = 1, 1, NULL))
FROM
	[Products] [e]
GROUP BY
	[e].[SupplierID]



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM (
    SELECT DISTINCT [p].[SupplierID]
    FROM [Products] AS [p]
    WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)
) AS [p0]


