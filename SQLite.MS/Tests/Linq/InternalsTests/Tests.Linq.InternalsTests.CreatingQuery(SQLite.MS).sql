BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

