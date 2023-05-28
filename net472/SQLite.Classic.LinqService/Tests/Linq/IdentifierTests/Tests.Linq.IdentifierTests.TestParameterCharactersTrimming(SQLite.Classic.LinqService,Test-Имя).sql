BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[Test-Имя] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @TestИмя  -- Int32
SET     @TestИмя = 2

UPDATE
	[testparams]
SET
	[Test-Имя] = @TestИмя
WHERE
	[testparams].[Test-Имя] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

