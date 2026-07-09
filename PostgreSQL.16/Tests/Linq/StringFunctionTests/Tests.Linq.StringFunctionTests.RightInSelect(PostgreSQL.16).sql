-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Substring(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

