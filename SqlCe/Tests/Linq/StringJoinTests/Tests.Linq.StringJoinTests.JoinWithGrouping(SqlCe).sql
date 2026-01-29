-- SqlCe

SELECT
	[m_1].[Key_1],
	[d].[NullableValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		INNER JOIN [SampleClass] [d] ON [m_1].[Key_1] = [d].[Id]
ORDER BY
	[m_1].[Key_1]

-- SqlCe

SELECT
	[m_1].[Key_1],
	[d].[NotNullableValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		INNER JOIN [SampleClass] [d] ON [m_1].[Key_1] = [d].[Id]
ORDER BY
	[m_1].[Key_1]

-- SqlCe

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [t1]
ORDER BY
	[t1].[Key_1]

-- SqlCe

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

