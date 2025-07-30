BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substring(p."FirstName", 1, 2) || '123' || Substring(p."FirstName", Length(p."FirstName") - (Length(p."FirstName") - 3) + 1, Length(p."FirstName") - 3) = 'Jo123n' AND
	p."PersonID" = 1

