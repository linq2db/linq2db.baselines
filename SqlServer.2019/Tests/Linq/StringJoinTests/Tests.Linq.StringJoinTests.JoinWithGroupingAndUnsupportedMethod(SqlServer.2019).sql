BeforeExecute
-- SqlServer.2019

SELECT
	[t5].[Key_1],
	[t2].[Join_1],
	[t4].[Join_1]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t5]
		OUTER APPLY (
			SELECT
				Coalesce(STRING_AGG(Coalesce([t1].[NullableValue], N''), N', '), N'') as [Join_1]
			FROM
				(
					SELECT TOP (2)
						[x].[NullableValue]
					FROM
						[SampleClass] [x]
					WHERE
						[t5].[Key_1] = [x].[Id]
					ORDER BY
						[x].[NotNullableValue]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				Coalesce(STRING_AGG([t3].[NotNullableValue], N', '), N'') as [Join_1]
			FROM
				(
					SELECT TOP (2)
						[x_1].[NotNullableValue]
					FROM
						[SampleClass] [x_1]
					WHERE
						[t5].[Key_1] = [x_1].[Id]
					ORDER BY
						[x_1].[NotNullableValue]
				) [t3]
		) [t4]
ORDER BY
	[t5].[Key_1]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

