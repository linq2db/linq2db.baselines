﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(1,NULL),
(2,NULL),
(10,1),
(11,1),
(20,2),
(22,2),
(100,10),
(101,10),
(102,10),
(110,11),
(111,11),
(112,11),
(200,20),
(201,20),
(202,20),
(210,21),
(211,21),
(212,21)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
[hierarchyDown] ([Level_1], [Id])
AS
(
	SELECT
		CAST(0 AS Int),
		[t2].[Id]
	FROM
		[CTE_1] [t2]
	UNION ALL
	SELECT
		[t3].[Level_1] + 1,
		[t_1].[Id]
	FROM
		[hierarchyDown] [t3]
			INNER JOIN [CTE_2] [t_1] ON [t_1].[ParentId] = [t3].[Id]
)
SELECT
	[t4].[Id],
	[t4].[Level_1]
FROM
	[hierarchyDown] [t4]
ORDER BY
	[t4].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

