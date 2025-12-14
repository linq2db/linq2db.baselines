-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[One] * 2) AND ([i].[One], [i].[One] + [i].[One])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Three]) BETWEEN ([i].[One], [i].[One]) AND ([i].[One], [i].[Four])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[Three]) AND ([i].[One], [i].[Two])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[Two])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Two], [i].[Two])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[One])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[Two], [i].[One]) AND ([i].[Two], [i].[Three])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Two]) BETWEEN ([i].[Nil], [i].[One]) AND ([i].[Three], [i].[Five])

