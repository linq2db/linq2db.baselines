﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]    INTEGER     NOT NULL,
	[Int]   INTEGER         NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] INTEGER         NULL
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
(2,2,'TWO',1)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

