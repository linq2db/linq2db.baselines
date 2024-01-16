BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'meat OR bread'
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'Czech'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([Description]), @p, LANGUAGE @p_1) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

