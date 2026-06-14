-- Informix.DB2 Informix

SELECT
	m_1.Id,
	m_1.Name,
	d.Id
FROM
	Company m_1
		INNER JOIN Department d ON d.CompanyId = m_1.Id
ORDER BY
	d.Id,
	m_1.Id

-- Informix.DB2 Informix

SELECT
	k_1.Item1,
	k_1.Item2,
	k_1.Item3,
	d.Id,
	d.Name
FROM
	(
		SELECT 101::Int AS Item1, 'Company1'::NVarChar(255) AS Item2, 1::Int AS Item3 FROM table(set{1})
		UNION ALL
		SELECT 102::Int, 'Company1'::NVarChar(255), 1::Int FROM table(set{1})
		UNION ALL
		SELECT 103::Int, 'Company1'::NVarChar(255), 1::Int FROM table(set{1})
		UNION ALL
		SELECT 201::Int, 'Company2'::NVarChar(255), 2::Int FROM table(set{1})
		UNION ALL
		SELECT 202::Int, 'Company2'::NVarChar(255), 2::Int FROM table(set{1})
		UNION ALL
		SELECT 203::Int, 'Company2'::NVarChar(255), 2::Int FROM table(set{1})
		UNION ALL
		SELECT 204::Int, 'Company2'::NVarChar(255), 2::Int FROM table(set{1})
		UNION ALL
		SELECT 301::Int, 'Company3'::NVarChar(255), 3::Int FROM table(set{1})
		UNION ALL
		SELECT 302::Int, 'Company3'::NVarChar(255), 3::Int FROM table(set{1})
		UNION ALL
		SELECT 303::Int, 'Company3'::NVarChar(255), 3::Int FROM table(set{1})
		UNION ALL
		SELECT 304::Int, 'Company3'::NVarChar(255), 3::Int FROM table(set{1})
		UNION ALL
		SELECT 305::Int, 'Company3'::NVarChar(255), 3::Int FROM table(set{1})) k_1
		INNER JOIN Employee d ON d.DepartmentId = k_1.Item1
ORDER BY
	d.Id

-- Informix.DB2 Informix

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

