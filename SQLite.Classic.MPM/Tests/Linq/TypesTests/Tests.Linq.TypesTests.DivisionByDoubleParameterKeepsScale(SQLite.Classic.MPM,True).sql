-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([v].[Integer] AS Float) / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[NumericDivisionTable] [v]
LIMIT 2

