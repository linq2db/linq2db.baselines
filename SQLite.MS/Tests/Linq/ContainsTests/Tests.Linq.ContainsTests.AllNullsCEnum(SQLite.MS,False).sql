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
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

