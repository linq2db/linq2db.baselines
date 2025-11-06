-- SqlServer.2014

SELECT
	[m_1].[Key_1],
	[d_1].[NullableValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[NullableValue]
			FROM
				[SampleClass] [d]
			WHERE
				[m_1].[Key_1] = [d].[Id] AND [d].[NullableValue] IS NOT NULL
		) [d_1]

-- SqlServer.2014

SELECT
	[m_1].[Key_1],
	[d_1].[c1]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				Coalesce([d].[NullableValue], N'') as [c1]
			FROM
				[SampleClass] [d]
			WHERE
				[m_1].[Key_1] = [d].[Id]
		) [d_1]

-- SqlServer.2014

SELECT
	[g_1].[Id]
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

