BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	LENGTH(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

