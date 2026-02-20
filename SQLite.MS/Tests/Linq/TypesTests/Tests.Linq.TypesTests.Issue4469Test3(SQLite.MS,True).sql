-- SQLite.MS SQLite

SELECT
	CAST([v].[Integer] AS FloatDouble) / 33,
	CAST([v].[Decimal] AS FloatDouble) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]
LIMIT 2

