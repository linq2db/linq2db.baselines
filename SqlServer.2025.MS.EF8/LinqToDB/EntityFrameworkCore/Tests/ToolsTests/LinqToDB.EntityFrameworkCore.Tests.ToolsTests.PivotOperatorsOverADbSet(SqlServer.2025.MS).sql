-- SqlServer.2025
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


-- SqlServer.2025
SELECT
	[g_1].[SupplierID],
	COUNT(IIF([g_1].[Discontinued] = 0, 1, NULL)),
	COUNT(IIF([g_1].[Discontinued] = 1, 1, NULL))
FROM
	[Products] [g_1]
GROUP BY
	[g_1].[SupplierID]



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM (
    SELECT DISTINCT [p].[SupplierID]
    FROM [Products] AS [p]
    WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)
) AS [t]


