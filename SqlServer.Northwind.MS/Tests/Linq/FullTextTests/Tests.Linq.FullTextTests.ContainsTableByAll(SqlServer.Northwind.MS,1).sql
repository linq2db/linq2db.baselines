-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'seafood OR bread'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], *, @search) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

