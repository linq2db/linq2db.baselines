-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
ORDER BY
	[d].[NotNullableValue],
	[d].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
WHERE
	[d].[NullableValue] IS NOT NULL AND [d].[NullableValue] <> ''
ORDER BY
	[d].[NotNullableValue],
	[d].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
ORDER BY
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
ORDER BY
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
ORDER BY
	[d].[NotNullableValue] DESC,
	[d].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN [SampleClass] [d] ON ([m_1].[Key_1] = [d].[Id])
ORDER BY
	IIF([d].[NullableValue] IS NULL, 0, 1),
	[d].[NotNullableValue] DESC,
	[d].[NullableValue]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[g_1].[Id]
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

