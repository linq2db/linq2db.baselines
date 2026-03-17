-- Access.Ace.Odbc AccessODBC

SELECT
	[cross_1].[Id],
	[cross_1].[Year_1],
	[cross_1].[StartDate],
	[cross_1].[EndDate]
FROM
	(
		SELECT
			[source_1].[Key1],
			[source_1].[Key2],
			[source_1].[Id],
			[year_1].[Year] as [Year_1],
			[year_1].[StartDate],
			[year_1].[EndDate]
		FROM
			[YearMap] [year_1],
			(
				SELECT
					[selection].[Key1],
					[selection].[Key2],
					[entity].[SampleId] as [Id]
				FROM
					[Source] [selection],
					[Sample] [entity]
			) [source_1]
	) [cross_1]
		INNER JOIN [SelectionMap] [map_1] ON ([cross_1].[Key1] = [map_1].[Key1] AND [cross_1].[Key2] = [map_1].[Key2])

