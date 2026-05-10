-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, CAST([t].[Value] AS NVarChar(11)) || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '2 Day')
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '3 Day'),
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '4 Day')

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[v_1].[Value2]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, CAST([v].[Value] AS NVarChar(11)) || ' Day') as [Value1],
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '2 Day') as [Value2]
		FROM
			[SampleClass] [v]
		WHERE
			[v].[Value] = 1
		UNION
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '3 Day') as [Value1],
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '4 Day') as [Value2]
	) [v_1]

