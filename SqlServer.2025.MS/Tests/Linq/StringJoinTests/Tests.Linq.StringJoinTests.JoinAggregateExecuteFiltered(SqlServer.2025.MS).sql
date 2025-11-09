-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	Coalesce(STRING_AGG(Coalesce([x].[NullableValue], N''), N', '), N'')
FROM
	[SampleClass] [x]
WHERE
	[x].[NullableValue] IS NOT NULL AND [x].[NullableValue] IN (N'A', N'B')

