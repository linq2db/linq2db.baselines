-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			COUNT(DISTINCT [t1].[Value1])
		FROM
			[SampleClass] [t1]
	),
	(
		SELECT
			STRING_AGG([t2].[Value1], N' -> ')
		FROM
			[SampleClass] [t2]
	)
FROM
	[SampleClass] [t]

