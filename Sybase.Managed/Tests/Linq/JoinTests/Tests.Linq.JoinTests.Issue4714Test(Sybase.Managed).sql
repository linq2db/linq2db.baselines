-- Sybase.Managed Sybase

SELECT
	[sub].[SampleId],
	[sub].[Year_1],
	[sub].[StartDate],
	[sub].[EndDate]
FROM
	(
		SELECT
			[source_1].[Key1],
			[source_1].[Key2],
			[entity].[SampleId],
			[year_1].[Year] as [Year_1],
			[year_1].[StartDate],
			[year_1].[EndDate]
		FROM
			[YearMap] [year_1],
			[Source] [source_1],
			[Sample] [entity]
	) [sub]
		INNER JOIN [SelectionMap] [map_1] ON [sub].[Key1] = [map_1].[Key1] AND [sub].[Key2] = [map_1].[Key2]

