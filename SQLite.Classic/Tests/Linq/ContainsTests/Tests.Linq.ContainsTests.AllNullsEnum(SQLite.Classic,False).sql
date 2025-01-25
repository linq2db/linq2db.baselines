BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]    INTEGER     NOT NULL,
	[Int]   INTEGER         NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (NULL, NULL)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, NULL)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

