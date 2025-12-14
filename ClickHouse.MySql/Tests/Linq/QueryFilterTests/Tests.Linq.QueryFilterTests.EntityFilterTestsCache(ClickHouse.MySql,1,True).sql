-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Value,
	m_1.IsDeleted
FROM
	MasterClass m_1
		INNER JOIN MasterClass d ON d.Id = m_1.Id
WHERE
	NOT m_1.IsDeleted AND NOT d.IsDeleted

