BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Coalesce(STRING_AGG([t1].[NullableValue], N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue]), N'')
FROM
	[SampleClass] [t1]

