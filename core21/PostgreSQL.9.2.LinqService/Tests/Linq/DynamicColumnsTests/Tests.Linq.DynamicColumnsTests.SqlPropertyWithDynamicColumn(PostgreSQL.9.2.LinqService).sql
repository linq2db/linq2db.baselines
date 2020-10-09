BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	x."PersonID", 
	x."FirstName", 
	x."LastName", 
	x."MiddleName"
FROM
	"Person" x
WHERE
	x."FirstName" = 'John'

