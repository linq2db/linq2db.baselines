BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t],
	[SampleClass] [c_1]
WHERE
	[c_1].[Value] > @param

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

