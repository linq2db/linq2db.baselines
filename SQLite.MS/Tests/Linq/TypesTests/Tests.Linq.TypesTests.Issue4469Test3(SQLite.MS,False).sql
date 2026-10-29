-- SQLite.MS SQLite
DECLARE @param Real -- Double
SET     @param = 33

SELECT
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]
LIMIT 2

