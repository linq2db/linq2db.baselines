BeforeExecute
-- SqlServer.2017

SELECT
	[t].[Id],
	[t].[Value],
	[s_1].[Key_1],
	[s_1].[SecondValue]
FROM
	[SampleClass] [t]
		CROSS APPLY (
			SELECT
				[s].[Key_1],
				[s].[SecondValue]
			FROM
				(
					SELECT
						1 as [Key_1],
						3 as [SecondValue]
					WHERE
						1 = [t].[Id]
				) [s]
		) [s_1]

