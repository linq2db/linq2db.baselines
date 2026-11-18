-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t_1].[Id],
	[t_1].[Value],
	[t2].[Value1],
	[t2].[Value2]
FROM
	[SampleClass] [t_1]
		LEFT JOIN (
			SELECT TOP 1
				[t1].[Value1],
				[t1].[Value2]
			FROM
				(
					SELECT
						DateAdd('d', [t].[Value], Now) as [Value1],
						DateAdd('d', 2, Now) as [Value2]
					FROM
						[SampleClass] [t]
					WHERE
						[t].[Value] = 1
					UNION
					SELECT
						DateAdd('d', 3, Now) as [Value1],
						DateAdd('d', 4, Now) as [Value2]
				) [t1]
		) [t2] ON 1=1

