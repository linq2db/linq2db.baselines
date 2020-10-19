BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClass]
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
DECLARE @p1  -- Int32
SET     @p1 = 20

UPDATE
	[SampleClass]
SET
	[Value] = @p1 + [SampleClass].[Value] * 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClass]

