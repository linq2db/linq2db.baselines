BeforeExecute
-- SqlCe

DROP TABLE [Sample]

BeforeExecute
-- SqlCe

CREATE TABLE [Sample]
(
	[SampleId] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Source]

BeforeExecute
-- SqlCe

CREATE TABLE [Source]
(
	[Key1] Int NOT NULL,
	[Key2] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [SelectionMap]

BeforeExecute
-- SqlCe

CREATE TABLE [SelectionMap]
(
	[Key1]              Int     NOT NULL,
	[Key2]              Int     NOT NULL,
	[SelectionProperty] Decimal NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [YearMap]

BeforeExecute
-- SqlCe

CREATE TABLE [YearMap]
(
	[StartDate] DateTime NOT NULL,
	[EndDate]   DateTime NOT NULL,
	[Year]      Int      NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[source_2].[Id],
	[year_1].[Year] as [Year_1],
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
-- SqlCe

DROP TABLE [YearMap]

BeforeExecute
-- SqlCe

DROP TABLE [SelectionMap]

BeforeExecute
-- SqlCe

DROP TABLE [Source]

BeforeExecute
-- SqlCe

DROP TABLE [Sample]

