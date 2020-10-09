BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	x."PersonID", 
	x."FirstName", 
	x."LastName", 
	x."MiddleName"
FROM
	"Person" x
WHERE
	x."FirstName" = 'John'

