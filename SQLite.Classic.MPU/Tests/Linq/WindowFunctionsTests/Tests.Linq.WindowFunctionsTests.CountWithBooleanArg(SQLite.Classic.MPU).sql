-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id],
	COUNT([t].[IntValue] = 20) OVER (PARTITION BY [t].[CategoryId]),
	COUNT([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

