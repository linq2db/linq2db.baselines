-- Oracle.11.Managed Oracle11

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- Oracle.11.Managed Oracle11

SELECT
	d."CompanyId",
	d."Id",
	d."Name"
FROM
	"Department" d
WHERE
	d."CompanyId" IN (1, 2, 3)
ORDER BY
	d."Id"

-- Oracle.11.Managed Oracle11

SELECT
	k_1."item",
	d."Id",
	d."DepartmentId",
	d."Name",
	d."Salary"
FROM
	(
		SELECT 101 AS "item" FROM sys.dual
		UNION ALL
		SELECT 102 FROM sys.dual
		UNION ALL
		SELECT 103 FROM sys.dual
		UNION ALL
		SELECT 201 FROM sys.dual
		UNION ALL
		SELECT 202 FROM sys.dual
		UNION ALL
		SELECT 203 FROM sys.dual
		UNION ALL
		SELECT 204 FROM sys.dual
		UNION ALL
		SELECT 301 FROM sys.dual
		UNION ALL
		SELECT 302 FROM sys.dual
		UNION ALL
		SELECT 303 FROM sys.dual
		UNION ALL
		SELECT 304 FROM sys.dual
		UNION ALL
		SELECT 305 FROM sys.dual) k_1
		INNER JOIN "Employee" d ON d."DepartmentId" = k_1."item"
ORDER BY
	d."Id"

