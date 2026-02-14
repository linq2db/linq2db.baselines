-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			COUNT(DISTINCT [t1].[Value1]) as [CountExt]
		FROM
			[SampleClass] [t1]
	),
	(
		SELECT
			GROUP_CONCAT([t2].[Value1], ' -> ') as [Aggregated]
		FROM
			[SampleClass] [t2]
	)
FROM
	[SampleClass] [t]

