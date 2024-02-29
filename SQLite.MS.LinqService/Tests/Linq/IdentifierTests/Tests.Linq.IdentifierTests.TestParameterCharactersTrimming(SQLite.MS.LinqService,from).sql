BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[from] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[testparams]
SET
	[from] = 2
WHERE
	[testparams].[from] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

