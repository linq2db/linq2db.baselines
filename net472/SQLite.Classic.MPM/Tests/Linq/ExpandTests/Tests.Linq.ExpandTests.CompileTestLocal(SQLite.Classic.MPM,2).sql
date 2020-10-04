BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [SampleClass]
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
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t],
	[SampleClass] [c_1]
WHERE
	[c_1].[Value] > @param

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [SampleClass]

