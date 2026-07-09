-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	gr."FirstName",
	gr."LastName",
	SUM(gr."PersonID")
FROM
	"Person" gr
GROUP BY
	gr."FirstName",
	gr."LastName"

