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
DECLARE @r3  -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) = ([i].[One], [i].[One] * 2, @r3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints]

