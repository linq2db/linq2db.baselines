BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p."PersonID", 
	p."FirstName"
FROM
	"Person" p
WHERE
	LTrim('  ' || p."FirstName" || ' ') = 'John ' AND p."PersonID" = 1

