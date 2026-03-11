-- SqlServer.Northwind SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'meat'
DECLARE @lang NVarChar(4000) -- String
SET     @lang = N'Russian'
DECLARE @top Int -- Int32
SET     @top = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([CategoryName], [Description]), @search, LANGUAGE @lang, @top) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

