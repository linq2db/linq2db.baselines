BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	STRING_AGG([t].[Value1], N' -> ')
FROM
	[SampleClass] [t]

