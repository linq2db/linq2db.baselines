BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	STRING_AGG([t].[Value1], N' -> ')
FROM
	[SampleClass] [t]

