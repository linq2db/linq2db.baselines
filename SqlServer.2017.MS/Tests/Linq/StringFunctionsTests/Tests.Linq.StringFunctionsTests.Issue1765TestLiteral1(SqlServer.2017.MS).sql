-- SqlServer.2017.MS SqlServer.2017

SELECT
	STRING_AGG([t].[Value4], N' -> ')
FROM
	[SampleClass] [t]

