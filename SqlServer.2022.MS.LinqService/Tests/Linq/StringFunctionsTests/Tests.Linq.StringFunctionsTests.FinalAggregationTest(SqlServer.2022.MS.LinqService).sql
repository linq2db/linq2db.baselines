BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG([t].[Value1], N' -> ')
FROM
	[SampleClass] [t]

