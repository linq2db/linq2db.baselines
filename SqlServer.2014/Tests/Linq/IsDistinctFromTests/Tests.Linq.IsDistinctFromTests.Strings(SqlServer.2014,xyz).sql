BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.2014
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlServer.2014
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.2014
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

