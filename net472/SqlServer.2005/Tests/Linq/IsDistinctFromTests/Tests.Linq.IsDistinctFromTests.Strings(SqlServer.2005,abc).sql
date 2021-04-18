﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
SELECT 2,2,N'abc',N'abc' UNION ALL
SELECT 3,NULL,N'def',NULL

BeforeExecute
-- SqlServer.2005
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'abc'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2005
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'abc'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2005
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'abc'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2005
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'abc'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

