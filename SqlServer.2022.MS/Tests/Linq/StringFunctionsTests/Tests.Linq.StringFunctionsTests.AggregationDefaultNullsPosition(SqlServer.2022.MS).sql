-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY IIF([t1].[Value1] IS NULL, 1, 0), [t1].[Value1])
FROM
	[SampleClass] [t1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY IIF([t1].[Value1] IS NULL, 1, 0), [t1].[Value1])
FROM
	[SampleClass] [t1]

