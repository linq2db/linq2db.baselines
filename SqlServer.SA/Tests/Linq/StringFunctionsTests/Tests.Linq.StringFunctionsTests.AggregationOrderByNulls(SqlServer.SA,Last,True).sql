-- SqlServer.SA SqlServer.2019

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY IIF([t1].[Value1] IS NULL, 1, 0), [t1].[Value1] DESC)
FROM
	[SampleClass] [t1]

