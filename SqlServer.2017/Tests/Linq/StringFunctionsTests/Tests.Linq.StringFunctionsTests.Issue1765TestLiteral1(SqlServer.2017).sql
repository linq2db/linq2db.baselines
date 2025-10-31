-- SqlServer.2017

SELECT
	STRING_AGG([t].[Value4], N' -> ')
FROM
	[SampleClass] [t]

