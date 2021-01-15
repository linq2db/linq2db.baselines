BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]        INTEGER NOT NULL,
	[NullValue] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], 0) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], 0) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], 0) = 2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [SampleClass]

