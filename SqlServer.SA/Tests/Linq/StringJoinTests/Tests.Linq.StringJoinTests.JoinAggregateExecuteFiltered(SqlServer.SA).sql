-- SqlServer.SA SqlServer.2019

SELECT
	STRING_AGG(Coalesce([x].[NullableValue], N''), N', ')
FROM
	[SampleClass] [x]
WHERE
	[x].[NullableValue] IS NOT NULL AND [x].[NullableValue] IN (N'A', N'B')

