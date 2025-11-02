-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] IN (-1) OR [s].[Int] IS NULL)
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL)
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)
LIMIT 1

