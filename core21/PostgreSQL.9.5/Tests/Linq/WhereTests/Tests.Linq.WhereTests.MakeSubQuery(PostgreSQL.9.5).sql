BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID" + 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

