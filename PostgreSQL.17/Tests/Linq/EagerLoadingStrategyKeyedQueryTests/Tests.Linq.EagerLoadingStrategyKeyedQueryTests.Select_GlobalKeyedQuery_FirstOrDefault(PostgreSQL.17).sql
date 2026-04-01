-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	d_sel."CompanyId",
	d_sel."Id",
	d_sel."Name",
	d_sel."IsActive"
FROM
	"Department" d_sel
WHERE
	d_sel."CompanyId" IN (1)
ORDER BY
	d_sel."Id"

