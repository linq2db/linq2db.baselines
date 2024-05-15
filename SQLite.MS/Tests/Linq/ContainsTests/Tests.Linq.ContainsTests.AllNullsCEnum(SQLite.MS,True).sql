BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]    INTEGER     NOT NULL,
	[Int]   INTEGER         NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

