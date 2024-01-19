BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [HierarchyTree]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
),
[hierarchyDown0] ([Level], [Id])
AS
(
	SELECT
		0,
		[t4].[Id]
	FROM
		[CTE_1] [t4]
	UNION ALL
	SELECT
		[t5].[Level] + 1,
		[t_2].[Id]
	FROM
		[hierarchyDown0] [t5]
			INNER JOIN [CTE_2] [t_2] ON ([t_2].[ParentId] = [t5].[Id] OR [t_2].[ParentId] IS NULL AND [t5].[Id] IS NULL)
)
SELECT
	Count(*)
FROM
	[hierarchyDown] [t6]
		INNER JOIN [hierarchyDown0] [h2] ON ([h2].[Id] = [t6].[Id] OR [h2].[Id] IS NULL AND [t6].[Id] IS NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [HierarchyTree]

