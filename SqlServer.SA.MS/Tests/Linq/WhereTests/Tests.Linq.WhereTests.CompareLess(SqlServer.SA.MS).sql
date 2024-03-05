﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereCompareData]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[WhereCompareData]', N'U') IS NULL)
	CREATE TABLE [WhereCompareData]
	(
		[Id]            Int NOT NULL,
		[NotNullable]   Int NOT NULL,
		[Nullable]      Int     NULL,
		[OtherNullable] Int     NULL,

		CONSTRAINT [PK_WhereCompareData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [WhereCompareData]
(
	[Id],
	[NotNullable],
	[Nullable],
	[OtherNullable]
)
VALUES
(1,1,NULL,10),
(2,1,10,10),
(3,1,10,NULL),
(4,1,NULL,NULL),
(5,1,NULL,20),
(6,1,10,20),
(7,1,10,NULL),
(8,1,NULL,NULL),
(9,1,NULL,20),
(10,1,30,20),
(11,1,30,NULL),
(12,1,NULL,NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] < [p].[OtherNullable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	([p].[Nullable] >= [p].[OtherNullable] OR [p].[Nullable] IS NULL OR [p].[OtherNullable] IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] > [p].[Nullable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	([p].[OtherNullable] <= [p].[Nullable] OR [p].[OtherNullable] IS NULL OR [p].[Nullable] IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereCompareData]

