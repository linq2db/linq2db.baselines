-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name",
	t1."Kind",
	CASE
		WHEN t1."Kind" = 'Active' THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			d."Id",
			d."Name",
			CAST('Active' AS VarChar(255)) as "Kind"
		FROM
			"Department" d
		WHERE
			d."IsActive" = 1
		UNION ALL
		SELECT
			d_1."Id",
			d_1."Name",
			CAST('Inactive' AS VarChar(255)) as "Kind"
		FROM
			"Department" d_1
		WHERE
			d_1."IsActive" = 0
	) t1

-- Oracle.11.Managed Oracle11

SELECT
	k_1."Item1",
	k_1."Item2",
	d."Id",
	d."Name"
FROM
	(
		SELECT 101 AS "Item1", 'Active' AS "Item2" FROM sys.dual
		UNION ALL
		SELECT 103, 'Active' FROM sys.dual
		UNION ALL
		SELECT 201, 'Active' FROM sys.dual
		UNION ALL
		SELECT 203, 'Active' FROM sys.dual
		UNION ALL
		SELECT 301, 'Active' FROM sys.dual
		UNION ALL
		SELECT 303, 'Active' FROM sys.dual
		UNION ALL
		SELECT 305, 'Active' FROM sys.dual
		UNION ALL
		SELECT 102, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 202, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 204, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 302, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 304, 'Inactive' FROM sys.dual) k_1
		INNER JOIN "Employee" d ON k_1."Item1" = d."DepartmentId" AND k_1."Item2" = 'Active'
WHERE
	d."Salary" > 45000

-- Oracle.11.Managed Oracle11

SELECT
	k_1."Item1",
	k_1."Item2",
	d."Id",
	d."Name"
FROM
	(
		SELECT 101 AS "Item1", 'Active' AS "Item2" FROM sys.dual
		UNION ALL
		SELECT 103, 'Active' FROM sys.dual
		UNION ALL
		SELECT 201, 'Active' FROM sys.dual
		UNION ALL
		SELECT 203, 'Active' FROM sys.dual
		UNION ALL
		SELECT 301, 'Active' FROM sys.dual
		UNION ALL
		SELECT 303, 'Active' FROM sys.dual
		UNION ALL
		SELECT 305, 'Active' FROM sys.dual
		UNION ALL
		SELECT 102, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 202, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 204, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 302, 'Inactive' FROM sys.dual
		UNION ALL
		SELECT 304, 'Inactive' FROM sys.dual) k_1
		INNER JOIN "Contractor" d ON k_1."Item1" = d."DepartmentId" AND k_1."Item2" = 'Inactive'

