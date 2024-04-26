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

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) > ([i].[One], [i].[One] * 2, [i].[Four] - 1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Four]) > ([i].[One], [i].[Two], [i].[Three])

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Four]) > ([i].[One], [i].[Five], [i].[Three])

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Nil], [i].[Four]) > ([i].[One], [i].[Two], [i].[Three])

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(2, NULL, 3) > ([i].[One], [i].[Two], [i].[Three])

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Ints]

