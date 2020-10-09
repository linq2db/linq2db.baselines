BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
		INNER JOIN ( 
			SELECT 
				'Doe' as "Item"
		) n ON p."LastName" = n."Item"

