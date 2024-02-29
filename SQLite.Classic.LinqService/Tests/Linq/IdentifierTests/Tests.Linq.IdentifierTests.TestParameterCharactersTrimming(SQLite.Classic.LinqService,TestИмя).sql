BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[TestИмя] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[testparams]
SET
	[TestИмя] = 2
WHERE
	[testparams].[TestИмя] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

