Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX([p].[QuantityPerUnit])
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND ([p].[ProductName] LIKE N'U%')


-- SqlServer.2016 (asynchronously)

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND [e].[ProductName] LIKE N'U%' ESCAPE N'~'



-- SqlServer.2016

DELETE [e]
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND [e].[ProductName] = N'a'



