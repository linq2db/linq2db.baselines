BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

