BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SampleClass]
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
SET     @param = 2

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] > @param

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [SampleClass]

