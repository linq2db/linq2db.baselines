-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	Length(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

