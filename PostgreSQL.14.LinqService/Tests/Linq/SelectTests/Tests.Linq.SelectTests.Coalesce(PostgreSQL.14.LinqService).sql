BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

