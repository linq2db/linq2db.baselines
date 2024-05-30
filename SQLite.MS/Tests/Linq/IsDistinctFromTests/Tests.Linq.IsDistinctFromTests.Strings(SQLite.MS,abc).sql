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
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS @value

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

