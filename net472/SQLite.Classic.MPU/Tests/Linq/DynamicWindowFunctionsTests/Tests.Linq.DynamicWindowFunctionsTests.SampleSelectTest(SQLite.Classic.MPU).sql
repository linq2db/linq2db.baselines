BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]     INTEGER NOT NULL,
	[Value1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	RANK() OVER(PARTITION BY [e].[Value1] ORDER BY [e].[Id], [e].[Value1] DESC),
	[e].[Id],
	[e].[Value1]
FROM
	[SampleClass] [e]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [SampleClass]

