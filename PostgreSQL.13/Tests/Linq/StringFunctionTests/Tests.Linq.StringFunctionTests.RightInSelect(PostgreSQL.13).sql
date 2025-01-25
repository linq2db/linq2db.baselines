BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	RIGHT(p."FirstName", 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

