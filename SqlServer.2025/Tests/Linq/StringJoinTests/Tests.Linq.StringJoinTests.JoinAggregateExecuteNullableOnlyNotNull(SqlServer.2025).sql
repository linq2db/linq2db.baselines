BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	Coalesce(STRING_AGG([t1].[NullableValue], N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue]), N'')
FROM
	[SampleClass] [t1]

