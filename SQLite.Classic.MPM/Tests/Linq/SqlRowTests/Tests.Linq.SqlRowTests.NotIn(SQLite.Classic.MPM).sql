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
	([i].[One], [i].[Two]) <> (1, [i].[One] * 2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) <> ([i].[One], [i].[One] * 2, [i].[Four] - 1) AND
	([i].[One], [i].[Two], [i].[Three]) <> (0, 7, 9) AND
	([i].[One], [i].[Two], [i].[Three]) <> (NULL, -1, [i].[Four])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Three], [i].[Four]) <> ([i].[One], [i].[One] * 2, [i].[Four] - 1) AND
	([i].[One], [i].[Three], [i].[Four]) <> (0, 7, 9) AND
	([i].[One], [i].[Three], [i].[Four]) <> (NULL, 2, [i].[Four])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Four]) <> ([i].[One], [i].[One] * 2, [i].[Four] - 1) AND
	([i].[One], [i].[Two], [i].[Four]) <> (0, 7, 9) AND
	([i].[One], [i].[Two], [i].[Four]) <> (NULL, 2, [i].[Four])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil], [i].[Two], [i].[Four]) <> ([i].[One], [i].[One] * 2, [i].[Four] - 1) AND
	([i].[Nil], [i].[Two], [i].[Four]) <> (0, 7, 9) AND
	([i].[Nil], [i].[Two], [i].[Four]) <> (NULL, 2, [i].[Four])

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

