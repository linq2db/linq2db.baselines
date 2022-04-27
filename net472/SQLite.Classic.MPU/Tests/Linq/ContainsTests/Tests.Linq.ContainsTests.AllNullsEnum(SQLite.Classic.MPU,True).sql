BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]   INTEGER     NOT NULL,
	[Int]  INTEGER         NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(1,NULL,NULL),
(2,2,'TWO')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

