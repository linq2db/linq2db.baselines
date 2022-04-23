BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]  INTEGER NOT NULL,
	[Int] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Src]
(
	[Id],
	[Int]
)
VALUES
(1,NULL),
(2,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

