BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Cast(Floor(Cast(p."PersonID" as decimal) % 2) as Int) = 1 AND
	p."PersonID" = 1

