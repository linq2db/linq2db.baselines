-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p2."PersonID",
	p1."FirstName"
FROM
	"Person" p1,
	"Person" p2
WHERE
	p1."PersonID" = p2."PersonID"

