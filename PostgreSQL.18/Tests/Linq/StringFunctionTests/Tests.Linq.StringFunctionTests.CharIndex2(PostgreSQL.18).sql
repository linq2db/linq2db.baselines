-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position('p' in Substring(p."LastName", 2, Length(p."LastName") - 2)) + 1 = 3 AND
	p."PersonID" = 1

