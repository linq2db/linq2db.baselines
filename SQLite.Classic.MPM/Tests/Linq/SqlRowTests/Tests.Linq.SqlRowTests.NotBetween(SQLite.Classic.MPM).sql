-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) NOT BETWEEN ([i].[One], [i].[One] * 2) AND ([i].[One], [i].[One] + [i].[One])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Three]) NOT BETWEEN ([i].[One], [i].[One]) AND ([i].[One], [i].[Four])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) NOT BETWEEN ([i].[One], [i].[Three]) AND ([i].[One], [i].[Two])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) NOT BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[Two])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) NOT BETWEEN ([i].[One], [i].[One]) AND ([i].[Two], [i].[Two])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) NOT BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[One])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) NOT BETWEEN ([i].[Two], [i].[One]) AND ([i].[Two], [i].[Three])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) NOT BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) NOT BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Two]) NOT BETWEEN ([i].[Nil], [i].[One]) AND ([i].[Three], [i].[Five])

