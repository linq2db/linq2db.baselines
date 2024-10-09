BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	Coalesce(p."MiddleName", p."FirstName"),
	p."LastName",
	Coalesce(p."MiddleName", p."MiddleName", 'None')
FROM
	"Person" p
WHERE
	p."PersonID" = 1

