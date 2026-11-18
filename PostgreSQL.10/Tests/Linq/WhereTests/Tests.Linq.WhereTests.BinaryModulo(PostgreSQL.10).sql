-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

