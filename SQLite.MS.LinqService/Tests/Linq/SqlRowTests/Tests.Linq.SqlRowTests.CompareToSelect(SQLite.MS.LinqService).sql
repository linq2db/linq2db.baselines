BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints2]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) > ([y].[One], [y].[One], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) >= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) < ([y].[One], [y].[Three], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) <= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints]

