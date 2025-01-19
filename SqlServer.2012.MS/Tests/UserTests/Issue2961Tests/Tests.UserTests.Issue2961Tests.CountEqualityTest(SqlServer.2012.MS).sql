BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[subcc].[CountCondoCategories],
	[subct].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[g2].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoTags]
			FROM
				[CondoTags] [g2]
			GROUP BY
				[g2].[CondoId]
		) [subct] ON [c_1].[Id] = [subct].[Key_1]
		LEFT JOIN (
			SELECT
				[g1].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [g1]
			GROUP BY
				[g1].[CondoId]
		) [subcc] ON [c_1].[Id] = [subcc].[Key_1]

