BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Ints]
(
	[One]   INTEGER NOT NULL,
	[Two]   INTEGER NOT NULL,
	[Three] INTEGER NOT NULL,
	[Four]  INTEGER NOT NULL,
	[Five]  INTEGER NOT NULL,
	[Nil]   INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
VALUES
(1,2,3,4,5,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[One] * 2) AND ([i].[One], [i].[One] + [i].[One])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Three]) BETWEEN ([i].[One], [i].[One]) AND ([i].[One], [i].[Four])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[Three]) AND ([i].[One], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Two], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[One])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[Two], [i].[One]) AND ([i].[Two], [i].[Three])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Two]) BETWEEN ([i].[Nil], [i].[One]) AND ([i].[Three], [i].[Five])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

