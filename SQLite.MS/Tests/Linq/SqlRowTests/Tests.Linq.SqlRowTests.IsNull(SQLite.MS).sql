﻿BeforeExecute
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
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Two] IS NULL AND [i].[Three] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Nil] IS NULL AND NULL IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] IS NULL AND NULL IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints]

