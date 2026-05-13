-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[IsDeleted]
FROM
	[MasterClass] [t1]

-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Value],
	[e].[IsDeleted],
	[e].[MasterId]
FROM
	[DetailClass] [e]
WHERE
	NOT [e].[IsDeleted]

