-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[MidField],
	[t1].[Shared]
FROM
	[TphMl] [t1]
WHERE
	[t1].[Kind] IN (3, 2)
ORDER BY
	[t1].[Id]

