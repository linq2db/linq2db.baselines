-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[IsDeleted]
FROM
	[AttrFilteredEntity] [e]
WHERE
	NOT [e].[IsDeleted]

