BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = 2
DECLARE @String NVarChar(4000) -- String
SET     @String = N'abc'
DECLARE @NullableString NVarChar(4000) -- String
SET     @NullableString = N'abc'

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
-- SqlServer.2019
DECLARE @Int Int -- Int32
SET     @Int = 3
DECLARE @NullableInt Int -- Int32
SET     @NullableInt = NULL
DECLARE @String NVarChar(4000) -- String
SET     @String = N'def'
DECLARE @NullableString NVarChar(4000) -- String
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
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT EXISTS(
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	EXISTS(
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Src]

