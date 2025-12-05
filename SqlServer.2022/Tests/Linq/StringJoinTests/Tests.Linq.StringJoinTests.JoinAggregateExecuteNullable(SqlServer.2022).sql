-- SqlServer.2022

SELECT
	Coalesce(STRING_AGG(Coalesce([t1].[NullableValue], N''), N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue]), N'')
FROM
	[SampleClass] [t1]

