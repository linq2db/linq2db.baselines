-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id],
	ROW_NUMBER() OVER ()
FROM
	[WindowFunctionTestEntity] [t]

