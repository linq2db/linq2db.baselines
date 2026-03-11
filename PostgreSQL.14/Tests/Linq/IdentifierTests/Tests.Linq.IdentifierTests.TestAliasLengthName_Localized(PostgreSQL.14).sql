-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	z."FirstName",
	z."PersonID",
	z."LastName",
	z."MiddleName",
	z."Gender"
FROM
	"Person" z
WHERE
	z."PersonID" = 1

