BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substring(p."FirstName", 1, 1) || Substring(p."FirstName", Length(p."FirstName") - (Length(p."FirstName") - 3) + 1, Length(p."FirstName") - 3) = 'Jn' AND
	p."PersonID" = 1

