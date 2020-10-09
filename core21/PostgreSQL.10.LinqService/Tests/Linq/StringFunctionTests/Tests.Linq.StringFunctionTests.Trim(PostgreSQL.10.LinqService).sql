BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."PersonID", 
	p."FirstName"
FROM
	"Person" p
WHERE
	Trim('  ' || p."FirstName" || ' ') = 'John' AND p."PersonID" = 1

