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
DECLARE @value_1  -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT @value_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT @value_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS @value_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS @value_1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

