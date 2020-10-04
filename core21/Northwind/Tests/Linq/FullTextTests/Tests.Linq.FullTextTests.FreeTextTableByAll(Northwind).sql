BeforeExecute
-- Northwind SqlServer.2017
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'seafood bread'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], *, @p1) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

