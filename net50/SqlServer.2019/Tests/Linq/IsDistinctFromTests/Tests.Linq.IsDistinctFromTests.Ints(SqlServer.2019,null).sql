﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Int]            Int            NOT NULL,
		[NullableInt]    Int                NULL,
		[String]         NVarChar(4000)     NULL,
		[NullableString] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 0

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_1 IS NULL THEN 1 ELSE 0 END = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [Src]

