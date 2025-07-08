BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[subcc_1].[CountCondoCategories],
	[subct_1].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[subct].[CountCondoTags],
				[subct].[Key_1]
			FROM
				(
					SELECT
						[g2].[CondoId] as [Key_1],
						COUNT(*) as [CountCondoTags]
					FROM
						[CondoTags] [g2]
					GROUP BY
						[g2].[CondoId]
				) [subct]
		) [subct_1] ON [c_1].[Id] = [subct_1].[Key_1]
		LEFT JOIN (
			SELECT
				[subcc].[CountCondoCategories],
				[subcc].[Key_1]
			FROM
				(
					SELECT
						[g1].[CondoId] as [Key_1],
						COUNT(*) as [CountCondoCategories]
					FROM
						[CategoryCondos] [g1]
					GROUP BY
						[g1].[CondoId]
				) [subcc]
		) [subcc_1] ON [c_1].[Id] = [subcc_1].[Key_1]

