-- SQLite.MS SQLite
SELECT
	[t].[Id],
	ROW_NUMBER() OVER ()
FROM
	[WindowFunctionTestEntity] [t]

