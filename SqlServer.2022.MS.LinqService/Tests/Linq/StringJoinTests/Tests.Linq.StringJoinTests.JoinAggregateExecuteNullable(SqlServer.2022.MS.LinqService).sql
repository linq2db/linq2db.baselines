BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	Coalesce(STRING_AGG(Coalesce([t1].[NullableValue], N''), N', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue]), N'')
FROM
	[SampleClass] [t1]

