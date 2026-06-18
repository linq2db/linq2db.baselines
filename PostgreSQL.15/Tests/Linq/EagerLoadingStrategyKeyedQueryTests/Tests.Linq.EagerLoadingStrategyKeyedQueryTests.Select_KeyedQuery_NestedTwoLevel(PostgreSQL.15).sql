-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."DepartmentId",
	d."Name",
	d."Salary"
FROM
	"Department" m_1
		INNER JOIN "Employee" d ON d."DepartmentId" = m_1."Id"
WHERE
	m_1."CompanyId" IN (1, 2, 3)
ORDER BY
	d."Id",
	m_1."Id"

-- PostgreSQL.15 PostgreSQL

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

