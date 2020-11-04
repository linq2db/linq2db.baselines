BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @v  -- Int32
SET     @v = 2

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = @v

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

