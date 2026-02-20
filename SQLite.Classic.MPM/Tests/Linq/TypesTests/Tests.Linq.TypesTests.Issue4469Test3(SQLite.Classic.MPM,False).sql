-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param  -- Double
SET     @param = 33

SELECT
	CAST([v].[Integer] AS FloatDouble) / @param,
	CAST([v].[Decimal] AS FloatDouble) / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]
LIMIT 2

