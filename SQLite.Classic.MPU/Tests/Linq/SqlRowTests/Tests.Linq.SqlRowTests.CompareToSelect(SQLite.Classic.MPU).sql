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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Ints2]
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

INSERT INTO [Ints2]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) > ([y].[One], [y].[One], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) >= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) < ([y].[One], [y].[Three], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) <= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

