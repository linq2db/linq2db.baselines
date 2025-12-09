-- SqlServer.2016

SELECT
	[m_1].[Id],
	[m_1].[NullableValue]
FROM
	[SampleClass] [m_1]
ORDER BY
	[m_1].[Id]

-- SqlServer.2016

SELECT
	[m_1].[Id],
	[m_1].[NotNullableValue]
FROM
	[SampleClass] [m_1]
ORDER BY
	[m_1].[Id]

-- SqlServer.2016

SELECT
	[g_1].[Id]
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

