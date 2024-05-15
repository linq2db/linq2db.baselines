BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @One  -- Int32
SET     @One = 1
DECLARE @Two  -- Int32
SET     @Two = 2
DECLARE @Three  -- Int32
SET     @Three = 3
DECLARE @Four  -- Int32
SET     @Four = 4
DECLARE @Five  -- Int32
SET     @Five = 5
DECLARE @Nil  -- Int32
SET     @Nil = NULL

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
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[One] * 2) AND ([i].[One], [i].[One] + [i].[One])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Three]) BETWEEN ([i].[One], [i].[One]) AND ([i].[One], [i].[Four])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) BETWEEN ([i].[One], [i].[Three]) AND ([i].[One], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Two], [i].[Two])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[One]) AND ([i].[Three], [i].[One])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[Two], [i].[One]) AND ([i].[Two], [i].[Three])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Five]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Nil]) BETWEEN ([i].[One], [i].[Nil]) AND ([i].[Three], [i].[Nil])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two], [i].[Two]) BETWEEN ([i].[Nil], [i].[One]) AND ([i].[Three], [i].[Five])

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

