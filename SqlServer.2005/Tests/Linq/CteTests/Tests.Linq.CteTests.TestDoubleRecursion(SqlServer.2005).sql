BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

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
[hierarchyDown] ([Id], [Level])
AS
(
	SELECT
		[t_1].[Id],
		0
	FROM
		[CTE_1] [t_1]
	UNION ALL
	SELECT
		[t_2].[Id],
		[h].[Level] + 1
	FROM
		[hierarchyDown] [h]
			INNER JOIN [CTE_2] [t_2] ON [t_2].[ParentId] = [h].[Id]
)
SELECT
	Count(*)
FROM
	[hierarchyDown] [h1]
		INNER JOIN [hierarchyDown] [h2] ON [h2].[Id] = [h1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

