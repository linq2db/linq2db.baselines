-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 20

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
		[t2].[RootPartSortField],
		[t2].[RootPartId],
		[t2].[HierarchyLevel],
		[t2].[RootPartId]
	FROM
		(
			SELECT
				[t1].[RootPartSortField],
				[t1].[RootPartId],
				[t1].[HierarchyLevel]
			FROM
				(
					SELECT
						[x].[Name] as [RootPartSortField],
						[x].[Id] as [RootPartId],
						CAST(0 AS Int) as [HierarchyLevel],
						ROW_NUMBER() OVER (ORDER BY [x].[Name]) as [RN]
					FROM
						[Part] [x]
				) [t1]
			WHERE
				[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
		) [t2]
	UNION ALL
	SELECT
		[t3].[RootPartSortField],
		[t3].[RootPartId],
		[t3].[HierarchyLevel] + 1,
		[reference_1].[ReferenceId]
	FROM
		[partHierarchy] [t3]
			INNER JOIN [Reference] [reference_1] ON [reference_1].[ParentId] = [t3].[PartId]
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

