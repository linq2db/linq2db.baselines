SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
		CROSS JOIN [SampleClass] [t2]
WHERE
	[t2].[Value] > @param

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]
		CROSS JOIN [SampleClass] [t2]
WHERE
	[t2].[Value] > @param

