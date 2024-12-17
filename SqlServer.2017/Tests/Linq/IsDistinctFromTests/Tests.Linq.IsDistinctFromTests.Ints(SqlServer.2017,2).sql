BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(2,2,N'abc',N'abc'),
(3,NULL,N'def',NULL)

BeforeExecute
-- SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	 NOT EXISTS (
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	 NOT EXISTS (
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	 EXISTS (
		SELECT
			[s].[Int]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	 EXISTS (
		SELECT
			[s].[NullableInt]
		INTERSECT
		SELECT
			@value
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Src]

