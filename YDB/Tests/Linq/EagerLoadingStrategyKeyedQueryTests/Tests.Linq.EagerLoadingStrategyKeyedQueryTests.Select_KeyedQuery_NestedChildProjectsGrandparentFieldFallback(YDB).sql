-- YDB Ydb
SELECT
	m_1.Id as Id,
	m_1.Name as Name,
	d.Id as Id_1
FROM
	Company m_1
		INNER JOIN Department d ON d.CompanyId = m_1.Id
ORDER BY
	d.Id,
	m_1.Id

-- YDB Ydb
SELECT
	k_1.Item1 as Item1,
	k_1.Item2 as Item2,
	k_1.Item3 as Item3,
	d.Id as Id,
	d.Name as Name
FROM
	(VALUES
		(101,'Company1'u,1), (102,'Company1'u,1), (103,'Company1'u,1),
		(201,'Company2'u,2), (202,'Company2'u,2), (203,'Company2'u,2),
		(204,'Company2'u,2), (301,'Company3'u,3), (302,'Company3'u,3),
		(303,'Company3'u,3), (304,'Company3'u,3), (305,'Company3'u,3)
	) k_1(Item1, Item2, Item3)
		INNER JOIN Employee d ON d.DepartmentId = k_1.Item1
ORDER BY
	d.Id

-- YDB Ydb
SELECT
	c_1.Id as Id,
	c_1.Name as Name
FROM
	Company c_1
ORDER BY
	c_1.Id

