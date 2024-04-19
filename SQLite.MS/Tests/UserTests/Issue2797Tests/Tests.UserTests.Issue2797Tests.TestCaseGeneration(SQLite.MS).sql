BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [e].[Value] BETWEEN 2 AND 5 THEN 0
		ELSE 1
	END
FROM
	[SampleClass] [e]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

