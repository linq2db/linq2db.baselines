BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' I' = 'John I'

