BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID" + 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

