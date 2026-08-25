-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	RANK() OVER ()
FROM
	[WindowFunctionTestEntity] [t]

