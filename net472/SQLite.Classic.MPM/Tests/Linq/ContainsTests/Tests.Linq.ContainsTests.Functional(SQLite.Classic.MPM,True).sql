BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]    INTEGER     NOT NULL,
	[Int]   INTEGER         NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] IN (-1) OR [s].[Int] IS NULL)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

