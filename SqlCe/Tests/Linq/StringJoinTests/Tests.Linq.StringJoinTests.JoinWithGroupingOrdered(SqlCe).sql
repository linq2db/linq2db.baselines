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
	[d].[NotNullableValue],
	[d].[NullableValue] DESC,
	[m_1].[Key_1]

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
WHERE
	[d].[NullableValue] IS NOT NULL AND [d].[NullableValue] <> ''
ORDER BY
	[d].[NotNullableValue],
	[d].[NullableValue] DESC,
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
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC,
	[m_1].[Key_1]

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
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC,
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
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC,
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
	CASE
		WHEN [d].[NullableValue] IS NULL THEN 0
		ELSE 1
	END,
	[d].[NotNullableValue] DESC,
	[d].[NullableValue],
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

