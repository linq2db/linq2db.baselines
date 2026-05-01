-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Name",
	d."Id"
FROM
	"Company" m_1
		INNER JOIN "Department" d ON d."CompanyId" = m_1."Id"
ORDER BY
	d."Id",
	m_1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	k_1."Item1",
	k_1."Item2",
	k_1."Item3",
	d."Id",
	d."Name"
FROM
	(
		SELECT 101 AS "Item1", 'Company1' AS "Item2", 1 AS "Item3" FROM sys.dual
		UNION ALL
		SELECT 102, 'Company1', 1 FROM sys.dual
		UNION ALL
		SELECT 103, 'Company1', 1 FROM sys.dual
		UNION ALL
		SELECT 201, 'Company2', 2 FROM sys.dual
		UNION ALL
		SELECT 202, 'Company2', 2 FROM sys.dual
		UNION ALL
		SELECT 203, 'Company2', 2 FROM sys.dual
		UNION ALL
		SELECT 204, 'Company2', 2 FROM sys.dual
		UNION ALL
		SELECT 301, 'Company3', 3 FROM sys.dual
		UNION ALL
		SELECT 302, 'Company3', 3 FROM sys.dual
		UNION ALL
		SELECT 303, 'Company3', 3 FROM sys.dual
		UNION ALL
		SELECT 304, 'Company3', 3 FROM sys.dual
		UNION ALL
		SELECT 305, 'Company3', 3 FROM sys.dual) k_1
		INNER JOIN "Employee" d ON d."DepartmentId" = k_1."Item1"
ORDER BY
	d."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

