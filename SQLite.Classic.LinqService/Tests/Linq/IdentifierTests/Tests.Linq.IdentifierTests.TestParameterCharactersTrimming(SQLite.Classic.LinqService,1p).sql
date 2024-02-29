BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[1p] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[testparams]
SET
	[1p] = 2
WHERE
	[testparams].[1p] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

