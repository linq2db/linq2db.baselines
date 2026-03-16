-- SqlServer.2025

SELECT
	[t1].[Key_1],
	Coalesce((
		SELECT
			STRING_AGG(Coalesce([t2].[NullableValue], N''), N', ')
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
	), N''),
	Coalesce((
		SELECT
			STRING_AGG([t3].[NotNullableValue], N', ')
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
	), N'')
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [t1]
ORDER BY
	[t1].[Key_1]

-- SqlServer.2025

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

