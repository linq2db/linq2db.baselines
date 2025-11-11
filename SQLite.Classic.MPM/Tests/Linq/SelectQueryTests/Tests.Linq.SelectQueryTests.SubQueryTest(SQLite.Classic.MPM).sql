-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value],
	(
		SELECT
			[t1].[Value1]
		FROM
			(
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, CAST([t_1].[Value] AS NVarChar(11)) || ' Day') as [Value1],
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '2 Day') as [Value2]
				FROM
					[SampleClass] [t_1]
				WHERE
					[t_1].[Value] = 1
				UNION
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '3 Day') as [Value1],
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '4 Day') as [Value2]
			) [t1]
		LIMIT 1
	),
	(
		SELECT
			[t2].[Value2]
		FROM
			(
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, CAST([t_2].[Value] AS NVarChar(11)) || ' Day') as [Value1],
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '2 Day') as [Value2]
				FROM
					[SampleClass] [t_2]
				WHERE
					[t_2].[Value] = 1
				UNION
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '3 Day') as [Value1],
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '4 Day') as [Value2]
			) [t2]
		LIMIT 1
	)
FROM
	[SampleClass] [t]

