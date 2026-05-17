-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 10

UPDATE
	[SampleClass]
SET
	[Value] = @p + [SampleClass].[Value] * 2

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass] [t1]

