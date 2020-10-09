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
	Substring(p."FirstName", Length(p."FirstName") - 2, 3) = 'ohn' AND
	p."PersonID" = 1

