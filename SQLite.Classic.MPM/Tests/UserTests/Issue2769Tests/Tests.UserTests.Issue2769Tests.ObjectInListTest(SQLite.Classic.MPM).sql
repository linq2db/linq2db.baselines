BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]        INTEGER NOT NULL,
	[NullValue] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_1].[RECORDNAME],
	[a_1].[KEYNUMB_1]
FROM
	(
		SELECT
			[a].[Id] as [RECORDNAME],
			CASE
				WHEN [a].[NullValue] IS NOT NULL THEN [a].[NullValue]
				ELSE 0
			END as [KEYNUMB],
			[a].[NullValue] as [KEYNUMB_1]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	([a_1].[RECORDNAME] = 0 AND [a_1].[KEYNUMB] = 0 OR [a_1].[RECORDNAME] = 1 AND [a_1].[KEYNUMB] = 1 OR [a_1].[RECORDNAME] = 2 AND [a_1].[KEYNUMB] = 2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

