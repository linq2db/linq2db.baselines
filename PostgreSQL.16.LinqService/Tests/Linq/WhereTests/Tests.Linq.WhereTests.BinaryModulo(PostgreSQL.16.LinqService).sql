BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

