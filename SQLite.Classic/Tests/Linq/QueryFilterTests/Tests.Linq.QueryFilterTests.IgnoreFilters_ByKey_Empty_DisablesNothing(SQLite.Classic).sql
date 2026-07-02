-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Value],
	[e].[IsDeleted],
	[e].[MasterId]
FROM
	[DetailClass] [e]
WHERE
	[e].[Id] < 750 AND NOT [e].[IsDeleted] AND [e].[Id] < 500

