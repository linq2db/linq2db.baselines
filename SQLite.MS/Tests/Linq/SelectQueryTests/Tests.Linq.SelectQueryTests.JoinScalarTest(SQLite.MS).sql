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

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value],
	1
FROM
	[SampleClass] [t]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

