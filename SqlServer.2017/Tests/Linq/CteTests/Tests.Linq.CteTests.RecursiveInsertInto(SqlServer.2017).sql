BeforeExecute
-- SqlServer.2017

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
INSERT INTO [HierarchyData]
(
	[Id],
	[Level]
)
SELECT
	[t4].[Id],
	[t4].[Level_1]
FROM
	[hierarchyDown] [t4]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Level]
FROM
	[HierarchyData] [t1]
ORDER BY
	[t1].[Id]

