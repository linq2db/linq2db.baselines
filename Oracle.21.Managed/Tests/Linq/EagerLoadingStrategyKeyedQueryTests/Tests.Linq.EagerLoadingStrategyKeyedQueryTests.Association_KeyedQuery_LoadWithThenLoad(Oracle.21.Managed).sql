-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Company" t1
ORDER BY
	t1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d_1."Id",
	d_1."DepartmentId",
	d_1."Name",
	d_1."Salary"
FROM
	(
		SELECT DISTINCT
			d."Id"
		FROM
			(
				SELECT 1 AS "item" FROM sys.dual
				UNION ALL
				SELECT 2 FROM sys.dual
				UNION ALL
				SELECT 3 FROM sys.dual) t1
				INNER JOIN "Department" d ON t1."item" = d."CompanyId"
	) m_1
		INNER JOIN "Employee" d_1 ON m_1."Id" = d_1."DepartmentId"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	k_1."item",
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual
		UNION ALL
		SELECT 3 FROM sys.dual) k_1
		INNER JOIN "Department" d ON k_1."item" = d."CompanyId"

