BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'sweetest &! meat'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([Description]), @p) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

