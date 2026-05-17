-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Coalesce([t].[Value1], '') || Coalesce([t].[Value2], '')
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

