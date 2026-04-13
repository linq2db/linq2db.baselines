-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	LEAD([t].[IntValue], 2) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

