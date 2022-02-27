BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."PersonID" + 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

