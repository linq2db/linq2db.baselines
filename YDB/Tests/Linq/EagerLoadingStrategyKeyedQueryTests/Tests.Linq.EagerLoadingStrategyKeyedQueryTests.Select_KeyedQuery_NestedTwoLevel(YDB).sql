-- YDB Ydb

SELECT
	c_1.Id as Id,
	c_1.Name as Name
FROM
	Company c_1
ORDER BY
	c_1.Id

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 3

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
	m_1.CompanyId IN ($Ids0_1, $Ids0_2, $Ids0_3)
ORDER BY
	d.Id,
	m_1.Id

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 3

SELECT
	d.CompanyId as CompanyId,
	d.Id as Id,
	d.Name as Name
FROM
	Department d
WHERE
	d.CompanyId IN ($Ids0_1, $Ids0_2, $Ids0_3)
ORDER BY
	d.Id

