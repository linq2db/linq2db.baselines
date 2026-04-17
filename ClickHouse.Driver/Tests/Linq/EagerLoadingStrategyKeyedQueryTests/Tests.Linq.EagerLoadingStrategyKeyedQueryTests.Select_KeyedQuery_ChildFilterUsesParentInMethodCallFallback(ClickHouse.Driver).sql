-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	m_1.Name,
	d.Id,
	d.CompanyId,
	d.Name,
	d.IsActive
FROM
	Company m_1
		INNER JOIN Department d ON d.CompanyId = m_1.Id AND startsWith(d.Name, m_1.Name)
ORDER BY
	d.Id,
	m_1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

