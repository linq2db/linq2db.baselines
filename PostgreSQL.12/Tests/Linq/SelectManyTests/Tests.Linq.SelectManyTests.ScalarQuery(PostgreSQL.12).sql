BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p2."PersonID",
	t1."FirstName"
FROM
	"Person" t1,
	"Person" p2
WHERE
	t1."PersonID" = p2."PersonID"

