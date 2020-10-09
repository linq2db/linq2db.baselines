BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
WHERE
	Reverse(p."FirstName") = 'nhoJ' AND p."PersonID" = 1

