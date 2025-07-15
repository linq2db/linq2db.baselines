BeforeExecute
-- SqlServer.2019

SELECT
	STRING_AGG([t1].[Value4], N' -> ')
FROM
	[SampleClass] [t1]

