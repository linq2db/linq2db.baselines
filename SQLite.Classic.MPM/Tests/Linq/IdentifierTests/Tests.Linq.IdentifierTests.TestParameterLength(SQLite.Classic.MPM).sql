BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[col1]    INTEGER NOT NULL,
	[Column1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @A123456789b123456789c123456789d123456789e123456789  -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	[testparams]
SET
	[col1] = @A123456789b123456789c123456789d123456789e123456789
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [testparams]

