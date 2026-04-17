-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Key_1],
	Coalesce((
		SELECT
			STRING_AGG(Coalesce([t2].[Name], N''), N', ')
		FROM
			(
				SELECT TOP (2)
					[h].[NullableValue] as [Name]
				FROM
					[SampleClass] [h]
				WHERE
					[t1].[Key_1] = [h].[Id]
				ORDER BY
					[h].[NotNullableValue]
			) [t2]
	), N''),
	Coalesce((
		SELECT
			STRING_AGG([t3].[NotNullableValue], N', ')
		FROM
			(
				SELECT TOP (2)
					[x].[NotNullableValue]
				FROM
					[SampleClass] [x]
				WHERE
					[t1].[Key_1] = [x].[Id]
				ORDER BY
					[x].[NotNullableValue]
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

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

