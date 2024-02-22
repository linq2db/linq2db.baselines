﻿BeforeExecute
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
(1,2,3,4,5,NULL),
(10,20,30,40,50,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Ints]
SET
	[One] = [Ints].[Two] * 5,
	([Two], [Three]) = ([Ints].[Two] * 10, [j].[Three] * 100),
	([Four], [Nil]) = ([Ints].[One] * [Ints].[Four], 600)
FROM
	[Ints] [i]
		CROSS JOIN [Ints] [j]
WHERE
	[Ints].[One] = 10 AND
	[j].[One] = 1 AND
	[i].[One] = [Ints].[One] AND
	[i].[Two] = [Ints].[Two] AND
	[i].[Three] = [Ints].[Three] AND
	[i].[Four] = [Ints].[Four] AND
	[i].[Five] = [Ints].[Five] AND
	([i].[Nil] = [Ints].[Nil] OR [i].[Nil] IS NULL AND [Ints].[Nil] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Ints]

