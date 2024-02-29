BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[Test-Name] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[testparams]
SET
	[Test-Name] = 2
WHERE
	[testparams].[Test-Name] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

