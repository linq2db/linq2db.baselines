BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[Test-٣ᛯ౾-End] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Test٣ᛯ౾End  -- Int32
SET     @Test٣ᛯ౾End = 2

UPDATE
	[testparams]
SET
	[Test-٣ᛯ౾-End] = @Test٣ᛯ౾End
WHERE
	[testparams].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

