BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	STRING_AGG([t].[Value1], N' -> ')
FROM
	[SampleClass] [t]

