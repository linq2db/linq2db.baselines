-- SqlServer.Contained.MS SqlServer.2019

SELECT
	STRING_AGG([t1].[Value1], N' -> ')
FROM
	[SampleClass] [t1]

