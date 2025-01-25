BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	STRING_AGG([t].[Value4], N' -> ')
FROM
	[SampleClass] [t]

