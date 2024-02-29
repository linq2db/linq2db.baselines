BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[1p] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[testparams]
SET
	[1p] = 2
WHERE
	[testparams].[1p] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

