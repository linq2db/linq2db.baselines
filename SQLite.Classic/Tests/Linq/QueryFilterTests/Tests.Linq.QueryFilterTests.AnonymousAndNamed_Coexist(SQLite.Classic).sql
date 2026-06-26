-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Value],
	[e].[IsDeleted],
	[e].[MasterId]
FROM
	[DetailClass] [e]
WHERE
	NOT [e].[IsDeleted] AND [e].[Id] < 500

-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Value],
	[e].[IsDeleted],
	[e].[MasterId]
FROM
	[DetailClass] [e]
WHERE
	[e].[Id] < 500

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

