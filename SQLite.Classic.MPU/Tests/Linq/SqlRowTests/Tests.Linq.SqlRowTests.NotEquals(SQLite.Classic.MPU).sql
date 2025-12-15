-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) <> ([i].[One], [i].[One] * 2, [i].[Four] - 1)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Four]) <> ([i].[One], [i].[Two], [i].[Three])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Nil], [i].[Three]) <> ([i].[One], [i].[Two], [i].[Three])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1, [i].[Nil], 4) <> ([i].[One], [i].[Nil], [i].[Three])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(1, NULL, 4) <> ([i].[One], [i].[Nil], [i].[Three])

