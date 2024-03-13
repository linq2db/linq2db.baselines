BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Right(p."FirstName", 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

