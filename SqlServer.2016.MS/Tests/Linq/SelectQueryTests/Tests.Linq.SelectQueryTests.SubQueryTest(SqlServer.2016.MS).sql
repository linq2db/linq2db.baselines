-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t_1].[Id],
	[t_1].[Value],
	[t2].[Value1],
	[t2].[Value2]
FROM
	[SampleClass] [t_1]
		LEFT JOIN (
			SELECT TOP (1)
				[t1].[Value1],
				[t1].[Value2]
			FROM
				(
					SELECT
						DateAdd(day, [t].[Value], CURRENT_TIMESTAMP) as [Value1],
						DateAdd(day, 2, CURRENT_TIMESTAMP) as [Value2]
					FROM
						[SampleClass] [t]
					WHERE
						[t].[Value] = 1
					UNION
					SELECT
						DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1],
						DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
				) [t1]
		) [t2] ON 1=1

