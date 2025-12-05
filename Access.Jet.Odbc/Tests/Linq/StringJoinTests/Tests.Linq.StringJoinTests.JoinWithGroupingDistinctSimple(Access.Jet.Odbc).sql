-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

SELECT
	[g_1].[Id]
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

