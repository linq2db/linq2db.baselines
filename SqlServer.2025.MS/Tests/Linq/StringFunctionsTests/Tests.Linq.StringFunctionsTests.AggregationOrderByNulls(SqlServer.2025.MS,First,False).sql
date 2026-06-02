-- SqlServer.2025.MS SqlServer.2025

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY IIF([t1].[Value1] IS NULL, 0, 1), [t1].[Value1])
FROM
	[SampleClass] [t1]

