-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	LEAD([t].[IntValue], 2, 0) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

