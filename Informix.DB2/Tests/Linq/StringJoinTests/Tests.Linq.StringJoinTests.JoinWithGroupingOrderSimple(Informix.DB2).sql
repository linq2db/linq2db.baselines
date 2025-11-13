-- Informix.DB2 Informix

SELECT
	m_1.Key_1,
	d.NullableValue
FROM
	(
		SELECT DISTINCT
			g_1.Id as Key_1
		FROM
			SampleClass g_1
	) m_1
		INNER JOIN SampleClass d ON m_1.Key_1 = d.Id
WHERE
	d.NullableValue IS NOT NULL
ORDER BY
	d.NullableValue,
	d.Id

-- Informix.DB2 Informix

SELECT
	m_1.Key_1,
	d.NullableValue
FROM
	(
		SELECT DISTINCT
			g_1.Id as Key_1
		FROM
			SampleClass g_1
	) m_1
		INNER JOIN SampleClass d ON m_1.Key_1 = d.Id
ORDER BY
	d.NullableValue

-- Informix.DB2 Informix

SELECT
	g_1.Id
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	g_1.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

