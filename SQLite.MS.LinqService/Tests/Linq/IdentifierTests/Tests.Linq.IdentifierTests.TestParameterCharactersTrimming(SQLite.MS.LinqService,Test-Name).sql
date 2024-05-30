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
DECLARE @TestName  -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

