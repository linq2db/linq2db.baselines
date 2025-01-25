BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[source_2].[Id],
	[year_1].[Year],
	[year_1].[StartDate],
	[year_1].[EndDate]
FROM
	[YearMap] [year_1],
	(
		SELECT
			[sub].[SampleId] as [Id]
		FROM
			(
				SELECT
					[source_1].[Key1],
					[source_1].[Key2],
					[entity].[SampleId]
				FROM
					[Source] [source_1],
					[Sample] [entity]
			) [sub]
				INNER JOIN [SelectionMap] [map_1] ON [sub].[Key1] = [map_1].[Key1] AND [sub].[Key2] = [map_1].[Key2]
	) [source_2]

