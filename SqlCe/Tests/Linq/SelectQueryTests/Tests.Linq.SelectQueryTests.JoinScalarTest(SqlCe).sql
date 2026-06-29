-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1],
	[s].[c1] as [s]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON 1 = [t].[Id]

