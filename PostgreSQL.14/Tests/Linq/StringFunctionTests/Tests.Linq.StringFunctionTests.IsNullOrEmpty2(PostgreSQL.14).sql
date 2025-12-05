-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Length(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

