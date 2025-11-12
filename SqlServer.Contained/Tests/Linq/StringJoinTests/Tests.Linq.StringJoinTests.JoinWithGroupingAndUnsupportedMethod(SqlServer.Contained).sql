-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce([t2].[NullableValue], N''), N', '), N'')
		FROM
			(
				SELECT TOP (2)
					[x].[NullableValue]
				FROM
					[SampleClass] [x]
				WHERE
					[t1].[Key_1] = [x].[Id]
				ORDER BY
					[x].[NotNullableValue]
			) [t2]
	),
	(
		SELECT
			Coalesce(STRING_AGG([t3].[NotNullableValue], N', '), N'')
		FROM
			(
				SELECT TOP (2)
					[x_1].[NotNullableValue]
				FROM
					[SampleClass] [x_1]
				WHERE
					[t1].[Key_1] = [x_1].[Id]
				ORDER BY
					[x_1].[NotNullableValue]
			) [t3]
	)
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
ORDER BY
	[t1].[Key_1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

