BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[Test-葛󠄀城市-End] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test葛󠄀城市End  -- Int32
SET     @Test葛󠄀城市End = 2

UPDATE
	[testparams]
SET
	[Test-葛󠄀城市-End] = @Test葛󠄀城市End
WHERE
	[testparams].[Test-葛󠄀城市-End] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

