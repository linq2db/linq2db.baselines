BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	([e].[RecSrc], [e].[Value]) = ('default', 2007) OR
	([e].[RecSrc], [e].[Value]) = ('other', 2008)

