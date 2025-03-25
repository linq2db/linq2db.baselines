BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	LENGTH(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

