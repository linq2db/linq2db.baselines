-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	m_1.Value
FROM
	CustomTypeConvertedTable m_1
WHERE
	m_1.Value = 'Frau'

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	m_1.Value
FROM
	CustomTypeConvertedTable m_1
WHERE
	m_1.Value IN ('Frau', 'Herr')

