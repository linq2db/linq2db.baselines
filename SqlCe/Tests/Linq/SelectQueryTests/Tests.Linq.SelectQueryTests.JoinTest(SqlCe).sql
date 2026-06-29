-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1],
	[s].[Key_1],
	[s].[SecondValue]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [Key_1],
				3 as [SecondValue]
		) [s] ON 1 = [t].[Id]

