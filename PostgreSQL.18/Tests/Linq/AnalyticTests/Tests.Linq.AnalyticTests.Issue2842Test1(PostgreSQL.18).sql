-- PostgreSQL.18 PostgreSQL12

SELECT
	x."FirstName",
	RANK() OVER (ORDER BY x."PersonID" = 2)
FROM
	"Person" x

