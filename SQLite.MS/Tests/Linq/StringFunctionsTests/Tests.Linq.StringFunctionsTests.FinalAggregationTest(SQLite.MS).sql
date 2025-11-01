-- SQLite.MS SQLite

SELECT
	GROUP_CONCAT([t].[Value1], ' -> ')
FROM
	[SampleClass] [t]

