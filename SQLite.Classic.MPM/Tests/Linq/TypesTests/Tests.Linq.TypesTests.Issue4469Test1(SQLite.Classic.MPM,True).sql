-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[v].[Integer] / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]
LIMIT 2

