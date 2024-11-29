BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Sample]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Sample]', N'U') IS NULL)
	CREATE TABLE [Sample]
	(
		[SampleId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Source]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Source]', N'U') IS NULL)
	CREATE TABLE [Source]
	(
		[Key1] Int NOT NULL,
		[Key2] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SelectionMap]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[SelectionMap]', N'U') IS NULL)
	CREATE TABLE [SelectionMap]
	(
		[Key1]              Int     NOT NULL,
		[Key2]              Int     NOT NULL,
		[SelectionProperty] Decimal NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [YearMap]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[YearMap]', N'U') IS NULL)
	CREATE TABLE [YearMap]
	(
		[StartDate] DateTime2 NOT NULL,
		[EndDate]   DateTime2 NOT NULL,
		[Year]      Int       NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [YearMap]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SelectionMap]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Source]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Sample]

