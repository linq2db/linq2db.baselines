BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	STRING_AGG([t1].[Value4], N' -> ')
FROM
	[SampleClass] [t1]

