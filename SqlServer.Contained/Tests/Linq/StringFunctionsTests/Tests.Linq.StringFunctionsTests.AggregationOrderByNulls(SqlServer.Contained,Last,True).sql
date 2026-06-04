-- SqlServer.Contained SqlServer.2019

SELECT
	STRING_AGG([t1].[Value2], N' -> ') WITHIN GROUP (ORDER BY [t1].[Value1] DESC)
FROM
	[SampleClass] [t1]

