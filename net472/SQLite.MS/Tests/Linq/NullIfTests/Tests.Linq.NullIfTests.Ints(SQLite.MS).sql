﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Int]            INTEGER       NOT NULL,
	[NullableInt]    INTEGER           NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[Int], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableInt], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

