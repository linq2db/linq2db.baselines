-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	gr."FirstName",
	gr."LastName",
	SUM(gr."PersonID")
FROM
	"Person" gr
GROUP BY
	gr."FirstName",
	gr."LastName"

