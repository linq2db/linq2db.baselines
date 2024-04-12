﻿BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @NullableInt Int -- Int32
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
-- SqlCe
DECLARE @Int Int -- Int32
SET     @Int = 3
DECLARE @NullableInt Int -- Int32
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
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	Count(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe

DROP TABLE [Src]

