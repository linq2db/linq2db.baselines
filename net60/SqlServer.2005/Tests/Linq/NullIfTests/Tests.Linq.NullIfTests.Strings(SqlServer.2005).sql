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

SELECT
	NULLIF([s].[String], N'abc')
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2005

SELECT
	NULLIF([s].[String], N'xyz')
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2005

SELECT
	NULLIF([s].[NullableString], N'abc')
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2005

SELECT
	NULLIF([s].[NullableString], N'xyz')
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

