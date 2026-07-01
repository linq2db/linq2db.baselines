-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Kind as Kind,
	t1.Kind = 'Active'u as c1
FROM
	(
		SELECT
			d.Id as Id,
			d.Name as Name,
			Unwrap(CAST('Active'u AS Text)) as Kind
		FROM
			Department d
		WHERE
			d.IsActive
		UNION ALL
		SELECT
			d_1.Id as Id,
			d_1.Name as Name,
			Unwrap(CAST('Inactive'u AS Text)) as Kind
		FROM
			Department d_1
		WHERE
			NOT d_1.IsActive
	) t1

-- YDB Ydb

SELECT
	k_1.Item1 as Item1,
	k_1.Item2 as Item2,
	d.Id as Id,
	d.Name as Name
FROM
	(VALUES
		(101,'Active'u), (102,'Inactive'u), (103,'Active'u),
		(201,'Active'u), (202,'Inactive'u), (203,'Active'u),
		(204,'Inactive'u), (301,'Active'u), (302,'Inactive'u),
		(303,'Active'u), (304,'Inactive'u), (305,'Active'u)
	) k_1(Item1, Item2)
		INNER JOIN Employee d ON k_1.Item1 = d.DepartmentId
WHERE
	d.Salary > 45000 AND k_1.Item2 = 'Active'u
ORDER BY
	d.Id

-- YDB Ydb

SELECT
	k_1.Item1 as Item1,
	k_1.Item2 as Item2,
	d.Id as Id,
	d.Name as Name
FROM
	(VALUES
		(101,'Active'u), (102,'Inactive'u), (103,'Active'u),
		(201,'Active'u), (202,'Inactive'u), (203,'Active'u),
		(204,'Inactive'u), (301,'Active'u), (302,'Inactive'u),
		(303,'Active'u), (304,'Inactive'u), (305,'Active'u)
	) k_1(Item1, Item2)
		INNER JOIN Contractor d ON k_1.Item1 = d.DepartmentId
WHERE
	k_1.Item2 = 'Inactive'u
ORDER BY
	d.Id

