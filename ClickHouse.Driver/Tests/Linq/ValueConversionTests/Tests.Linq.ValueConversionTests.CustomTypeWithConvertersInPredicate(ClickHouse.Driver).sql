-- ClickHouse.Driver ClickHouse
SELECT
	m_1.Id,
	m_1.Value
FROM
	CustomTypeConvertedTable m_1
WHERE
	m_1.Value = 'Frau'

-- ClickHouse.Driver ClickHouse
SELECT
	m_1.Id,
	m_1.Value
FROM
	CustomTypeConvertedTable m_1
WHERE
	m_1.Value IN ('Frau', 'Herr')

