-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 20

WITH [partHierarchy] ([RootPartSortField], [RootPartId], [PartId])
AS
(
	SELECT
		[t2].[RootPartSortField],
		[t2].[RootPartId],
		[t2].[RootPartId]
	FROM
		(
			SELECT
				[t1].[RootPartSortField],
				[t1].[RootPartId]
			FROM
				(
					SELECT
						[x].[Name] as [RootPartSortField],
						[x].[Id] as [RootPartId],
						ROW_NUMBER() OVER (ORDER BY [x].[Name]) as [RN]
					FROM
						[Issue5457Part] [x]
				) [t1]
			WHERE
				[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
		) [t2]
	UNION ALL
	SELECT
		[t3].[RootPartSortField],
		[t3].[RootPartId],
		[reference].[ReferenceId]
	FROM
		[partHierarchy] [t3]
			INNER JOIN [Issue5457Reference] [reference] ON [reference].[ParentId] = [t3].[PartId]
)
SELECT
	[id].[RootPartId],
	[id].[RootPartSortField],
	[me].[Id],
	[me].[Name]
FROM
	[Issue5457Part] [me]
		INNER JOIN [partHierarchy] [id] ON [me].[Id] = [id].[PartId]

