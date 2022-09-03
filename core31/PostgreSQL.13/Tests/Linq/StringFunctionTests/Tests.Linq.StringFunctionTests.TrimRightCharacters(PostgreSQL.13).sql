BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	RTRIM(('  ' || p."FirstName" || ' '), ' n') = '  Joh' AND
	p."PersonID" = 1

