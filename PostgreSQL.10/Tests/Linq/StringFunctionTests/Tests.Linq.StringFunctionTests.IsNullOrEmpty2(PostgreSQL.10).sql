-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Length(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

