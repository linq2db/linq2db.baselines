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
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', NULL)
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

