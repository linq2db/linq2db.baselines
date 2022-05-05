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
DECLARE @Int_1  -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Int_1  -- Int32
SET     @Int_1 = 3
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[String], 'abc')
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[String], 'xyz')
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[String], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableString], 'abc')
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableString], 'xyz')
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	NULLIF([s].[NullableString], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

