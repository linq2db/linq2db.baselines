BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	RIGHT(p."FirstName", 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

