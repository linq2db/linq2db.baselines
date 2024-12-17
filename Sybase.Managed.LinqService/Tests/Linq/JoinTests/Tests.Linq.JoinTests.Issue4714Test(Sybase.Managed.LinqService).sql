BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Sample') IS NOT NULL)
	DROP TABLE [Sample]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Sample') IS NULL)
	EXECUTE('
		CREATE TABLE [Sample]
		(
			[SampleId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Source') IS NOT NULL)
	DROP TABLE [Source]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Source') IS NULL)
	EXECUTE('
		CREATE TABLE [Source]
		(
			[Key1] Int NOT NULL,
			[Key2] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectionMap') IS NOT NULL)
	DROP TABLE [SelectionMap]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectionMap') IS NULL)
	EXECUTE('
		CREATE TABLE [SelectionMap]
		(
			[Key1]              Int     NOT NULL,
			[Key2]              Int     NOT NULL,
			[SelectionProperty] DECIMAL NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'YearMap') IS NOT NULL)
	DROP TABLE [YearMap]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'YearMap') IS NULL)
	EXECUTE('
		CREATE TABLE [YearMap]
		(
			[StartDate] DateTime NOT NULL,
			[EndDate]   DateTime NOT NULL,
			[Year]      Int      NOT NULL
		)
	')

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

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'YearMap') IS NOT NULL)
	DROP TABLE [YearMap]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectionMap') IS NOT NULL)
	DROP TABLE [SelectionMap]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Source') IS NOT NULL)
	DROP TABLE [Source]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Sample') IS NOT NULL)
	DROP TABLE [Sample]

