-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Floor(p."PersonID"::decimal % 2)::Int = 1 AND p."PersonID" = 1

