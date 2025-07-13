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

