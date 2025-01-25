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
(1,2,3,4,5,NULL),
(10,20,30,40,50,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Ints]
SET
	[One] = [Ints].[Two] * 5,
	([Two], [Three]) = (200, [Ints].[Three] * 10),
	([Four], [Nil]) = ([Ints].[One] * [Ints].[Four], 600)
WHERE
	[Ints].[One] = 10

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

