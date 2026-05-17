-- SqlServer.2025.MS SqlServer.2025

SELECT
	STRING_AGG([t1].[Value1], N' -> ')
FROM
	[SampleClass] [t1]

