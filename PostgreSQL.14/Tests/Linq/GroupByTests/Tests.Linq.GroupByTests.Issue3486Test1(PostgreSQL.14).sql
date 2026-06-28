-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	gr."FirstName",
	gr."LastName",
	SUM(gr."PersonID")
FROM
	"Person" gr
GROUP BY
	gr."FirstName",
	gr."LastName"

