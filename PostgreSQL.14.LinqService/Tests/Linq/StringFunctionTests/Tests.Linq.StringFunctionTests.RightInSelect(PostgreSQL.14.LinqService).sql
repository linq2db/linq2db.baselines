BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Substring(p."FirstName", LENGTH(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

