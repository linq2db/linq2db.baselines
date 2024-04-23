BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]        INTEGER NOT NULL,
	[NullValue] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND ([a].[NullValue] = 0 AND [a].[NullValue] IS NOT NULL OR [a].[NullValue] IS NULL) OR [a].[Id] = 1 AND [a].[NullValue] = 1 AND [a].[NullValue] IS NOT NULL OR [a].[Id] = 2 AND [a].[NullValue] = 2 AND [a].[NullValue] IS NOT NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

