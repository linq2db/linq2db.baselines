﻿BeforeExecute
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
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

BeforeExecute
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Src]

