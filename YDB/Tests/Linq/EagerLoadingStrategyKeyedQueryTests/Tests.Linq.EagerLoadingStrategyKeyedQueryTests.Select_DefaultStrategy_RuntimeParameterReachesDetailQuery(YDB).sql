-- YDB Ydb
DECLARE $minId Int32
SET     $minId = 2

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.DepartmentId as DepartmentId,
	d.Name as Name,
	d.Salary as Salary
FROM
	Department m_1
		INNER JOIN Employee d ON d.DepartmentId = m_1.Id
WHERE
	d.Id >= $minId
ORDER BY
	d.Id,
	m_1.Id

-- YDB Ydb

SELECT
	d.Id as Id,
	d.Name as Name
FROM
	Department d
ORDER BY
	d.Id

