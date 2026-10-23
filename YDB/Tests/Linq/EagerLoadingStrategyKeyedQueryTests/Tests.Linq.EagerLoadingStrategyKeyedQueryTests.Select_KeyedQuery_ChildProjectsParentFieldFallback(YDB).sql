-- YDB Ydb
SELECT
	m_1.Id as Id,
	m_1.Name as Name,
	d.Id as Id_1,
	d.Name as Name_1
FROM
	Company m_1
		INNER JOIN Department d ON d.CompanyId = m_1.Id
ORDER BY
	d.Id,
	m_1.Id

-- YDB Ydb
SELECT
	c_1.Id as Id,
	c_1.Name as Name
FROM
	Company c_1
ORDER BY
	c_1.Id

