-- DuckDB

SELECT
	t1.Id,
	t1.Name,
	t1.Kind,
	t1.Kind = 'Active'
FROM
	(
		SELECT
			d.Id,
			d.Name,
			CAST('Active' AS VARCHAR) as Kind
		FROM
			Department d
		WHERE
			d.IsActive
		UNION ALL
		SELECT
			d_1.Id,
			d_1.Name,
			CAST('Inactive' AS VARCHAR) as Kind
		FROM
			Department d_1
		WHERE
			NOT d_1.IsActive
	) t1

-- DuckDB

SELECT
	k_1.Item1,
	k_1.Item2,
	d.Id,
	d.Name
FROM
	(VALUES
		(101,'Active'), (102,'Inactive'), (103,'Active'),
		(201,'Active'), (202,'Inactive'), (203,'Active'),
		(204,'Inactive'), (301,'Active'), (302,'Inactive'),
		(303,'Active'), (304,'Inactive'), (305,'Active')
	) k_1(Item1, Item2)
		INNER JOIN Employee d ON k_1.Item1 = d.DepartmentId AND k_1.Item2 = 'Active'
WHERE
	d.Salary > 45000
ORDER BY
	d.Id

-- DuckDB

SELECT
	k_1.Item1,
	k_1.Item2,
	d.Id,
	d.Name
FROM
	(VALUES
		(101,'Active'), (102,'Inactive'), (103,'Active'),
		(201,'Active'), (202,'Inactive'), (203,'Active'),
		(204,'Inactive'), (301,'Active'), (302,'Inactive'),
		(303,'Active'), (304,'Inactive'), (305,'Active')
	) k_1(Item1, Item2)
		INNER JOIN Contractor d ON k_1.Item1 = d.DepartmentId AND k_1.Item2 = 'Inactive'
ORDER BY
	d.Id

