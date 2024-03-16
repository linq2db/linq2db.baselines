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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @One  -- Int32
SET     @One = 10
DECLARE @Two  -- Int32
SET     @Two = 20
DECLARE @Three  -- Int32
SET     @Three = 30
DECLARE @Four  -- Int32
SET     @Four = 40
DECLARE @Five  -- Int32
SET     @Five = 50
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Ints]
SET
	[One] = [Ints].[Two] * 5,
	([Two], [Three]) = ([Ints].[Two] * 10, [j].[Three] * 100),
	([Four], [Nil]) = ([Ints].[One] * [Ints].[Four], 600)
FROM
	[Ints] [j]
WHERE
	[Ints].[One] = 10 AND [j].[One] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[One],
	[t1].[Two],
	[t1].[Three],
	[t1].[Four],
	[t1].[Five],
	[t1].[Nil]
FROM
	[Ints] [t1]
ORDER BY
	[t1].[One]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

