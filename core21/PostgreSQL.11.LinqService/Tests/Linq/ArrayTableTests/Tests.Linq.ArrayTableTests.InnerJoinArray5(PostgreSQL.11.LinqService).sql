BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	n.c1, 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	( 
		SELECT 
			'Janet' as c1
		UNION ALL
		SELECT 
			'Doe' as c1
		UNION ALL
		SELECT 
			'John' as c1
		UNION ALL
		SELECT 
			'Doe' as c1
	) n
		INNER JOIN "Person" p ON n.c1 = p."LastName"

