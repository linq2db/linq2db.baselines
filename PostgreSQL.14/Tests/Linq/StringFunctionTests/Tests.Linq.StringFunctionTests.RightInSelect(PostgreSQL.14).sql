-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Substring(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

