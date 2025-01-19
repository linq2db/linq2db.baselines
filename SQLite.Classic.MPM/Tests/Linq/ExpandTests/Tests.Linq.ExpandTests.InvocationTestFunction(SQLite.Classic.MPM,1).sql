BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @v  -- Int32
SET     @v = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = @v

