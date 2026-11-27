-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param Real -- Double
SET     @param = 33

SELECT
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param,
	[v].[Double] / @param
FROM
	[NumericDivisionTable] [v]
LIMIT 2

