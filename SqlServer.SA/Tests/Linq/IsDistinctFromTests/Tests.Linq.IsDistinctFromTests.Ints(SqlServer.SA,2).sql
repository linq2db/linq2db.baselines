BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value OR [s].[Int] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value OR [s].[NullableInt] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value OR [s].[Int] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value OR [s].[NullableInt] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

