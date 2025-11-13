-- Informix.DB2 Informix

SELECT
	m_1.Key_1,
	d_1.NullableValue
FROM
	(
		SELECT DISTINCT
			g_1.Id as Key_1
		FROM
			SampleClass g_1
	) m_1
		INNER JOIN (
			SELECT
				d.NullableValue,
				ROW_NUMBER() OVER (PARTITION BY d.Id ORDER BY d.NotNullableValue) as rn,
				d.Id
			FROM
				SampleClass d
		) d_1 ON m_1.Key_1 = d_1.Id AND d_1.rn <= 2

-- Informix.DB2 Informix

SELECT
	m_1.Key_1,
	d_1.NotNullableValue
FROM
	(
		SELECT DISTINCT
			g_1.Id as Key_1
		FROM
			SampleClass g_1
	) m_1
		INNER JOIN (
			SELECT
				d.NotNullableValue,
				ROW_NUMBER() OVER (PARTITION BY d.Id ORDER BY d.NotNullableValue) as rn,
				d.Id
			FROM
				SampleClass d
		) d_1 ON m_1.Key_1 = d_1.Id AND d_1.rn <= 2

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

