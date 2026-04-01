-- Informix.DB2 Informix

SELECT
	m_1.Id,
	m_1.Name,
	d.Id,
	d.Name
FROM
	Company m_1
		INNER JOIN Department d ON d.CompanyId = m_1.Id
ORDER BY
	m_1.Id

-- Informix.DB2 Informix

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

