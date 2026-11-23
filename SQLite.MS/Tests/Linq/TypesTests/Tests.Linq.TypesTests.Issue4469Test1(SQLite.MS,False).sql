-- SQLite.MS SQLite
DECLARE @param Integer -- Int32
SET     @param = 33

SELECT
	[v].[Integer] / @param,
	CAST([v].[Decimal] AS Float) / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]
LIMIT 2

