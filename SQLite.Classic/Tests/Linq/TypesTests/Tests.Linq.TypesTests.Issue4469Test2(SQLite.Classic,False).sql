-- SQLite.Classic SQLite
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT
	CAST(CAST([v].[Integer] AS Decimal) AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]
LIMIT 2

