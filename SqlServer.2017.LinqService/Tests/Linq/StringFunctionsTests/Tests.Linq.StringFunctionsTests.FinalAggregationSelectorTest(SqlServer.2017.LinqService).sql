BeforeExecute
-- SqlServer.2017

SELECT
	STRING_AGG([t1].[Value1], N' -> ')
FROM
	[SampleClass] [t1]

