-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG([t1].[NullableValue], N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue])
FROM
	[SampleClass] [t1]

