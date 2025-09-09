BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."LastName") - Position('p' in Reverse(p."LastName")) = 2 AND
	Position('p' in p."LastName") <> 0 AND p."PersonID" = 1

