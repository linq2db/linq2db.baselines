BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[p_p] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[testparams]
SET
	[p_p] = 2
WHERE
	[testparams].[p_p] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

