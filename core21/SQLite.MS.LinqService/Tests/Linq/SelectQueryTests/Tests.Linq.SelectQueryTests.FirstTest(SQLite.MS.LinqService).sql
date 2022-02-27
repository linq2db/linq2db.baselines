BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,1 || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,2 || ' Day')
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClass]

