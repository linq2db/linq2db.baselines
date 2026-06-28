-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Company t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	m_1.Id as Id,
	d_1.Id as Id_1,
	d_1.DepartmentId as DepartmentId,
	d_1.Name as Name,
	d_1.Salary as Salary
FROM
	(
		SELECT DISTINCT
			d.Id as Id
		FROM
			(VALUES
				(1), (2), (3)
			) t1(item)
				INNER JOIN Department d ON t1.item = d.CompanyId
	) m_1
		INNER JOIN Employee d_1 ON m_1.Id = d_1.DepartmentId

-- YDB Ydb

SELECT
	k_1.item as item_1,
	d.Id as Id,
	d.CompanyId as CompanyId,
	d.Name as Name,
	d.IsActive as IsActive
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN Department d ON k_1.item = d.CompanyId

