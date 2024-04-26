BeforeExecute
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
	COUNT(*)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

