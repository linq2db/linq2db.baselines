-- SqlServer.2017

SELECT
	STRING_AGG(Coalesce([t1].[NullableValue], N''), N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue])
FROM
	[SampleClass] [t1]

