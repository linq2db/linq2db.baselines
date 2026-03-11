-- Access.Ace.OleDb AccessOleDb

SELECT
	[sub].[Id],
	[sub].[Year_1],
	[sub].[StartDate],
	[sub].[EndDate]
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
	) [sub]
		INNER JOIN [SelectionMap] [map_1] ON ([sub].[Key1] = [map_1].[Key1] AND [sub].[Key2] = [map_1].[Key2])

