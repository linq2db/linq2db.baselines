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
				d.Id,
				d.NotNullableValue
			FROM
				SampleClass d
		) d_1 ON m_1.Key_1 = d_1.Id AND d_1.rn <= 2
ORDER BY
	m_1.Key_1,
	d_1.NotNullableValue

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
ORDER BY
	m_1.Key_1,
	d_1.NotNullableValue

-- Informix.DB2 Informix

SELECT
	t1.Key_1
FROM
	(
		SELECT DISTINCT
			g_1.Id as Key_1
		FROM
			SampleClass g_1
	) t1
ORDER BY
	t1.Key_1

-- Informix.DB2 Informix

SELECT
	t1.PK,
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

