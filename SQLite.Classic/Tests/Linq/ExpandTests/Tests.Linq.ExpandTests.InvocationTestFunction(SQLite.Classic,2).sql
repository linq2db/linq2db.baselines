BeforeExecute
-- SQLite.Classic SQLite
DECLARE @v  -- Int32
SET     @v = 2

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = @v

