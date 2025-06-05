BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Double
SET     @param = 33
DECLARE @param_1  -- Double
SET     @param_1 = 33

SELECT
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]
LIMIT 2

