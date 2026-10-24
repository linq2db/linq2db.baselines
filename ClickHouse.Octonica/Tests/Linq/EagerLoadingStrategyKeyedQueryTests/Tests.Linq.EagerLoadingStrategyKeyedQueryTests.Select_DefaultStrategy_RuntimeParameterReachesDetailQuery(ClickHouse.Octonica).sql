-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.DepartmentId,
	d.Name,
	d.Salary
FROM
	Department m_1
		INNER JOIN Employee d ON d.DepartmentId = m_1.Id
WHERE
	d.Id >= 2
ORDER BY
	d.Id,
	m_1.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	d.Id,
	d.Name
FROM
	Department d
ORDER BY
	d.Id

