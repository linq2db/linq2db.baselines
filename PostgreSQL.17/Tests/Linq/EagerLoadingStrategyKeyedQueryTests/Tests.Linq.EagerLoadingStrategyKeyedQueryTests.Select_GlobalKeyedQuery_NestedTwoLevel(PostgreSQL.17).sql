-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	d_sel."DepartmentId",
	d_sel."Id",
	d_sel."Name",
	d_sel."Salary"
FROM
	"Employee" d_sel
WHERE
	d_sel."DepartmentId" IN (101, 102, 103, 201, 202, 203, 204, 301, 302, 303, 304, 305)
ORDER BY
	d_sel."Id"

