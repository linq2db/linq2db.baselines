-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field]
)
VALUES
(
	1,
	1,
	11
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)
LIMIT 2

