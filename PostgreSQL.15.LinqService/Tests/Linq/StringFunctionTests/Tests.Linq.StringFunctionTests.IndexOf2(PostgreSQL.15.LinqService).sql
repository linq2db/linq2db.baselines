BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position('e' in Substring(p."LastName", 3, Length(p."LastName") - 3)) + 2 = 5 AND
	p."PersonID" = 2

