﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity1]', N'U') IS NOT NULL)
	DROP TABLE [TestEntity1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity1]', N'U') IS NULL)
	CREATE TABLE [TestEntity1]
	(
		[Id]     Int            NOT NULL,
		[Field1] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity2]', N'U') IS NOT NULL)
	DROP TABLE [TestEntity2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity2]', N'U') IS NULL)
	CREATE TABLE [TestEntity2]
	(
		[Id]     Int            NOT NULL,
		[Field1] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t2].[Id],
	[t2].[Field1]
FROM
	[TestEntity1] [t1]
		LEFT JOIN [TestEntity2] [t2] ON [t1].[Id] = [t2].[Id]

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t2].[Id],
	[t2].[Field1]
FROM
	[TestEntity2] [t2]
		LEFT JOIN [TestEntity1] [t1] ON [t2].[Id] = [t1].[Id]
WHERE
	[t1].[Id] IS NULL

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Field1],
	NULL,
	NULL,
	NULL,
	[t2].[Id],
	[t2].[Id],
	[t2].[Field1],
	NULL,
	NULL
FROM
	[TestEntity1] [t1]
		LEFT JOIN [TestEntity2] [t2] ON [t1].[Id] = [t2].[Id]
UNION ALL
SELECT
	NULL,
	NULL,
	[t1_1].[Id],
	[t1_1].[Id],
	[t1_1].[Field1],
	NULL,
	NULL,
	NULL,
	[t2_1].[Id],
	[t2_1].[Field1]
FROM
	[TestEntity2] [t2_1]
		LEFT JOIN [TestEntity1] [t1_1] ON [t2_1].[Id] = [t1_1].[Id]
WHERE
	[t1_1].[Id] IS NULL

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity2]', N'U') IS NOT NULL)
	DROP TABLE [TestEntity2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEntity1]', N'U') IS NOT NULL)
	DROP TABLE [TestEntity1]

