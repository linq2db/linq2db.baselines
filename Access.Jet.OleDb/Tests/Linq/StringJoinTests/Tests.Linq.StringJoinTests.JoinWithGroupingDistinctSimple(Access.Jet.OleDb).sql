-- Access.Jet.OleDb AccessOleDb

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
	[m_1].[Key_1],
	[d_1].[NullableValue]

-- Access.Jet.OleDb AccessOleDb

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
		INNER JOIN (
			SELECT DISTINCT
				IIF([d].[NullableValue] IS NULL, '', [d].[NullableValue]) as [c1],
				[d].[Id]
			FROM
				[SampleClass] [d]
		) [d_1] ON ([m_1].[Key_1] = [d_1].[Id])
ORDER BY
	[m_1].[Key_1],
	[d_1].[c1]

-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

