BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'bread AND NOT meat'
DECLARE @top Int -- Int32
SET     @top = 4

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([Description]), @search, @top) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

