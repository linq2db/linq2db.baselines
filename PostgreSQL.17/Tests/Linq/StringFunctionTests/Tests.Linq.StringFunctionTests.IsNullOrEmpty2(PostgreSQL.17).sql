-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Length(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

