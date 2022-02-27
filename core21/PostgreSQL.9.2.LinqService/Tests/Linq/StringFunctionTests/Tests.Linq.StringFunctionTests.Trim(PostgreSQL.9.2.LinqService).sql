BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	Trim('  ' || p."FirstName" || ' ') = 'John' AND p."PersonID" = 1

