BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substring(p."FirstName", 1, 2) || '123' || Substring(p."FirstName", 4, Length(p."FirstName") - 3) = 'Jo123n' AND
	p."PersonID" = 1

