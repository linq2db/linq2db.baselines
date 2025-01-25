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
DECLARE @Int  -- Int32
SET     @Int = 2
DECLARE @NullableInt  -- Int32
SET     @NullableInt = 2
DECLARE @String NVarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString NVarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Int  -- Int32
SET     @Int = 3
DECLARE @NullableInt  -- Int32
SET     @NullableInt = NULL
DECLARE @String NVarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString NVarChar -- String
SET     @NullableString = NULL

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[Int], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	NULLIF([s].[NullableInt], NULL)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

