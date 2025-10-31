-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t1].[Value4], N' -> ')
FROM
	[SampleClass] [t1]

