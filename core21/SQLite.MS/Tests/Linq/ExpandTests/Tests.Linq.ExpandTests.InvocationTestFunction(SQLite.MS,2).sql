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
-- SQLite.MS SQLite

DROP TABLE [SampleClass]

