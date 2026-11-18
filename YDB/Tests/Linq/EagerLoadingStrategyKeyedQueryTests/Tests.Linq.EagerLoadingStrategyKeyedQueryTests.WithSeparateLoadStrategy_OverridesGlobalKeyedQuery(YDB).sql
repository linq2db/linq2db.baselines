-- YDB Ydb
SELECT
	m_1.Id as Id,
	m_1.Id_1 as Id_1,
	d_1.Id as Id_2,
	d_1.DepartmentId as DepartmentId,
	d_1.Name as Name,
	d_1.Salary as Salary
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			c_1.Id as Id_1
		FROM
			Company c_1
				INNER JOIN Department d ON d.CompanyId = c_1.Id
	) m_1
		INNER JOIN Employee d_1 ON d_1.DepartmentId = m_1.Id
ORDER BY
	d_1.Id,
	m_1.Id,
	m_1.Id_1

-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.Name as Name
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

