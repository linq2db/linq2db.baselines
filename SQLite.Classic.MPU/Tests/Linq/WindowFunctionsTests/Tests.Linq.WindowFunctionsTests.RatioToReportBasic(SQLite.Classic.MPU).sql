-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	CAST([t].[IntValue] AS Float) / NULLIF(CAST(SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId]) AS Float), 0)
FROM
	[WindowFunctionTestEntity] [t]

