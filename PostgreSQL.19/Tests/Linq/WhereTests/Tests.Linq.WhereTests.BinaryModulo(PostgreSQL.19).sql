-- PostgreSQL.19 PostgreSQL13

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(p."PersonID"::decimal % 2)::decimal = 1 AND p."PersonID" = 1

