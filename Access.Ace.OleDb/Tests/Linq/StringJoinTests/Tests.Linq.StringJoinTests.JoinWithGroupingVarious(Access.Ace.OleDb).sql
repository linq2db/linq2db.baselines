-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN (
			SELECT DISTINCT
				[d].[NullableValue],
				[d].[Id]
			FROM
				[SampleClass] [d]
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN (
			SELECT DISTINCT
				[d].[NullableValue],
				[d].[Id]
			FROM
				[SampleClass] [d]
			WHERE
				[d].[NullableValue] IS NOT NULL
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])

-- Access.Ace.OleDb AccessOleDb

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
		INNER JOIN (
			SELECT DISTINCT
				[d].[NullableValue],
				[d].[Id]
			FROM
				[SampleClass] [d]
			WHERE
				[d].[NullableValue] IS NOT NULL
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])
ORDER BY
	[d_1].[NullableValue] DESC

-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Key_1],
	[d_1].[NotNullableValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[NotNullableValue],
				[d].[Id]
			FROM
				[SampleClass] [d]
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])

-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Key_1],
	[d_1].[NotNullableValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[NotNullableValue],
				[d].[Id]
			FROM
				[SampleClass] [d]
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])
ORDER BY
	[d_1].[NotNullableValue] DESC

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

