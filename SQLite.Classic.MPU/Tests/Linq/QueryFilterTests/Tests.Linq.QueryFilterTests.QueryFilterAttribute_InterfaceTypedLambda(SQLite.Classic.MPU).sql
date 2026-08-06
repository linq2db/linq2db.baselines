-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	[e].[IsDeleted]
FROM
	[InterfaceAttrFilteredEntity] [e]
WHERE
	NOT [e].[IsDeleted]

