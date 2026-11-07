-- SqlServer.Contained SqlServer.2025
WITH [partHierarchy]
(
	[RootPartSortField],
	[RootPartId],
	[HierarchyLevel],
	[PartId]
)
AS
(
	SELECT
		[x].[Name],
		[x].[Id],
		CAST(0 AS Int),
		[x].[Id]
	FROM
		[Part] [x]
	UNION ALL
	SELECT
		[t1].[RootPartSortField],
		[t1].[RootPartId],
		[t1].[HierarchyLevel] + 1,
		[reference_1].[ReferenceId]
	FROM
		[partHierarchy] [t1]
			INNER JOIN [Reference] [reference_1] ON [reference_1].[ParentId] = [t1].[PartId]
)
SELECT
	[id].[RootPartId],
	[id].[RootPartSortField],
	[id].[HierarchyLevel],
	[me].[Id],
	[me].[Name]
FROM
	[Part] [me]
		INNER JOIN [partHierarchy] [id] ON [me].[Id] = [id].[PartId]

