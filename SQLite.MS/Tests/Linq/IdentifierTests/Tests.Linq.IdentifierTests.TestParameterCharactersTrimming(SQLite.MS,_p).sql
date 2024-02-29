BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[_p] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[testparams]
SET
	[_p] = 2
WHERE
	[testparams].[_p] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

