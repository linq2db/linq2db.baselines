﻿BeforeExecute
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

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	NULLIF([s].[Int], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	NULLIF([s].[NullableInt], NULL)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

