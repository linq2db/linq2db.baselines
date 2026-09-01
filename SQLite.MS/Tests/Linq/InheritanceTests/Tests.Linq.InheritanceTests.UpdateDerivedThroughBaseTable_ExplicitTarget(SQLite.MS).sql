-- SQLite.MS SQLite
UPDATE
	[InheritanceFilter]
SET
	[Id] = [InheritanceFilter].[Id],
	[Code] = [InheritanceFilter].[Code],
	[Child2Field] = 88
WHERE
	[InheritanceFilter].[Id] = 2

-- SQLite.MS SQLite
SELECT
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child2Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (22, 21, 2) AND [c_1].[Id] = 2
LIMIT 2

