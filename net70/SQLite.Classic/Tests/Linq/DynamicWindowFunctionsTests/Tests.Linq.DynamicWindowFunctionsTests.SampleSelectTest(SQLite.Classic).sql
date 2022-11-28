BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]     INTEGER NOT NULL,
	[Value1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	RANK() OVER(PARTITION BY [e].[Value1] ORDER BY [e].[Id], [e].[Value1] DESC),
	[e].[Id],
	[e].[Value1]
FROM
	[SampleClass] [e]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

