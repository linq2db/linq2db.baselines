BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	(p."FirstName" IS NULL OR Length(p."FirstName") = 0), 
	p."FirstName", 
	(p."MiddleName" IS NULL OR Length(p."MiddleName") = 0), 
	p."MiddleName", 
	p."LastName"
FROM
	"Person" p

