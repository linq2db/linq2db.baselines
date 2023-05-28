BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[Test-٣ᛯ౾-End] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Test٣ᛯ౾End  -- Int32
SET     @Test٣ᛯ౾End = 2

UPDATE
	[testparams]
SET
	[Test-٣ᛯ౾-End] = @Test٣ᛯ౾End
WHERE
	[testparams].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

