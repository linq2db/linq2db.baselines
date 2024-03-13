﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
SELECT 1,NULL UNION ALL
SELECT 2,NULL UNION ALL
SELECT 10,1 UNION ALL
SELECT 11,1 UNION ALL
SELECT 20,2 UNION ALL
SELECT 22,2 UNION ALL
SELECT 100,10 UNION ALL
SELECT 101,10 UNION ALL
SELECT 102,10 UNION ALL
SELECT 110,11 UNION ALL
SELECT 111,11 UNION ALL
SELECT 112,11 UNION ALL
SELECT 200,20 UNION ALL
SELECT 201,20 UNION ALL
SELECT 202,20 UNION ALL
SELECT 210,21 UNION ALL
SELECT 211,21 UNION ALL
SELECT 212,21

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyData]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyData]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyData]', N'U') IS NULL)
	CREATE TABLE [HierarchyData]
	(
		[Id]    Int NOT NULL,
		[Level] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

WITH [CTE_1] ([Id])
AS
(
	SELECT
		[t].[Id]
	FROM
		[HierarchyTree] [t]
	WHERE
		[t].[ParentId] IS NULL
),
[CTE_2] ([ParentId], [Id])
AS
(
	SELECT
		[t1].[ParentId],
		[t1].[Id]
	FROM
		[HierarchyTree] [t1]
),
[hierarchyDown] ([Level], [Id])
AS
(
	SELECT
		0,
		[t2].[Id]
	FROM
		[CTE_1] [t2]
	UNION ALL
	SELECT
		[t3].[Level] + 1,
		[t_1].[Id]
	FROM
		[hierarchyDown] [t3]
			INNER JOIN [CTE_2] [t_1] ON ([t_1].[ParentId] = [t3].[Id] OR [t_1].[ParentId] IS NULL AND [t3].[Id] IS NULL)
)
INSERT INTO [HierarchyData]
(
	[Id],
	[Level]
)
SELECT
	[t4].[Id],
	[t4].[Level]
FROM
	[hierarchyDown] [t4]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Level]
FROM
	[HierarchyData] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyData]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyData]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

