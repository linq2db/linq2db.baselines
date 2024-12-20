BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,1),
(2,2),
(3,3)

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t],
	[SampleClass] [t2]
WHERE
	[t2].[Value] > @param

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t],
	[SampleClass] [t2]
WHERE
	[t2].[Value] > @param

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

