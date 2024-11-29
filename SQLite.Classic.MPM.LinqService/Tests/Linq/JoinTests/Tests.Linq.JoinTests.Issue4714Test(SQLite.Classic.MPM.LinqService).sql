BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Sample]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Sample]
(
	[SampleId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Source]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Source]
(
	[Key1] INTEGER NOT NULL,
	[Key2] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectionMap]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SelectionMap]
(
	[Key1]              INTEGER NOT NULL,
	[Key2]              INTEGER NOT NULL,
	[SelectionProperty] Decimal NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [YearMap]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [YearMap]
(
	[StartDate] DateTime2 NOT NULL,
	[EndDate]   DateTime2 NOT NULL,
	[Year]      INTEGER   NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [YearMap]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SelectionMap]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Source]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Sample]

