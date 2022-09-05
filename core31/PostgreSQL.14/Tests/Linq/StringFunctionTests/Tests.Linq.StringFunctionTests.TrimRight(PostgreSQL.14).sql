BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	RTRIM('  ' || p."FirstName" || ' ') = '  John' AND
	p."PersonID" = 1

