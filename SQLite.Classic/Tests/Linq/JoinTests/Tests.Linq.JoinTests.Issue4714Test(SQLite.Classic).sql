-- SQLite.Classic SQLite

SELECT
	[source_2].[Id],
	[year_1].[Year],
	[year_1].[StartDate],
	[year_1].[EndDate]
FROM
	[YearMap] [year_1]
		CROSS JOIN (
			SELECT
				[entity].[SampleId] as [Id]
			FROM
				[Source] [source_1]
					INNER JOIN [SelectionMap] [map_1] ON [source_1].[Key1] = [map_1].[Key1] AND [source_1].[Key2] = [map_1].[Key2],
				[Sample] [entity]
		) [source_2]

