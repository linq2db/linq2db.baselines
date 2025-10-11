Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT MAX([p].[QuantityPerUnit])
FROM [Products] AS [p]
WHERE (@ef_filter__p0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND [p].[ProductName] LIKE N'U%'


-- SqlServer.2017 (asynchronously)

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE N'U%' ESCAPE N'~'



-- SqlServer.2017

DELETE [e]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] = N'a'



