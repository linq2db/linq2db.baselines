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
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', NULL)
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

