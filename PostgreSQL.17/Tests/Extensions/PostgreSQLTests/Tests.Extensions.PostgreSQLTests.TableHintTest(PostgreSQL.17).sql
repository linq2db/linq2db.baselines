-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > 0
FOR UPDATE OF p

