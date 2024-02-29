BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[col1]    INTEGER NOT NULL,
	[Column1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[testparams]
SET
	[col1] = 2
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

