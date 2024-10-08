BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	Coalesce(p."MiddleName", 'None')
FROM
	"Person" p
WHERE
	p."PersonID" = 1

