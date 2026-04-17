-- Informix.DB2 Informix

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
			'Active'::NVarChar(255) as Kind
		FROM
			Department d
		WHERE
			d.IsActive
		UNION ALL
		SELECT
			d_1.Id,
			d_1.Name,
			'Inactive'::NVarChar(255) as Kind
		FROM
			Department d_1
		WHERE
			NOT d_1.IsActive
	) t1

-- Informix.DB2 Informix

SELECT
	k_1.Item1,
	k_1.Item2,
	d.Id,
	d.Name
FROM
	(
		SELECT 101::Int AS Item1, 'Active'::NVarChar(255) AS Item2 FROM table(set{1})
		UNION ALL
		SELECT 103::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 201::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 203::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 301::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 303::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 305::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 102::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 202::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 204::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 302::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 304::Int, 'Inactive'::NVarChar(255) FROM table(set{1})) k_1
		INNER JOIN Employee d ON k_1.Item1 = d.DepartmentId AND k_1.Item2 = 'Active'
WHERE
	d.Salary > 45000

-- Informix.DB2 Informix

SELECT
	k_1.Item1,
	k_1.Item2,
	d.Id,
	d.Name
FROM
	(
		SELECT 101::Int AS Item1, 'Active'::NVarChar(255) AS Item2 FROM table(set{1})
		UNION ALL
		SELECT 103::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 201::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 203::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 301::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 303::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 305::Int, 'Active'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 102::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 202::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 204::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 302::Int, 'Inactive'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 304::Int, 'Inactive'::NVarChar(255) FROM table(set{1})) k_1
		INNER JOIN Contractor d ON k_1.Item1 = d.DepartmentId AND k_1.Item2 = 'Inactive'

