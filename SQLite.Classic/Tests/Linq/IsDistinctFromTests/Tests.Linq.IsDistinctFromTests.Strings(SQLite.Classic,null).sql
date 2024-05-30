BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Int]            INTEGER       NOT NULL,
	[NullableInt]    INTEGER           NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

