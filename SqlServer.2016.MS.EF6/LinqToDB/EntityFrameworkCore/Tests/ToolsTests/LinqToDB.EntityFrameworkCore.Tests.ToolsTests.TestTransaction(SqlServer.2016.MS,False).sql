Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX([p].[QuantityPerUnit])
FROM [Products] AS [p]
WHERE (((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] = CAST(0 AS bit))) OR ([p].[IsDeleted] = CAST(0 AS bit))) AND ([p].[ProductName] LIKE N'U%')


