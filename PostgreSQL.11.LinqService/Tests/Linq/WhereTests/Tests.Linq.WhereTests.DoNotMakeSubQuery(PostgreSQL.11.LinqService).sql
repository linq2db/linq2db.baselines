BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p2."PersonID",
	p2."FirstName" || ''
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

