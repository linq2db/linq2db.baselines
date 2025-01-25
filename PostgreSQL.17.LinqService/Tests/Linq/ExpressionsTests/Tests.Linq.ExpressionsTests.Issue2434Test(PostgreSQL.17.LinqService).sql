BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName",
	t1."FirstName" || ' ' || t1."LastName"
FROM
	"Issue2434Table" t1
ORDER BY
	t1."FirstName" || ' ' || t1."LastName"

