﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Src]
(
	[Int]            INTEGER       NOT NULL,
	[NullableInt]    INTEGER           NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT @value_1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT @value_1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS @value_1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value_1  -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS @value_1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

