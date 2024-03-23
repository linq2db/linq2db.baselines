BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

