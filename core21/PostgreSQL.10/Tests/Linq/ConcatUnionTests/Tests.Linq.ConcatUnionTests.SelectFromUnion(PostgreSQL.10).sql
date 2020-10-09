BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	t."ID", 
	DENSE_RANK() OVER(ORDER BY t."ID")
FROM
	( 
		SELECT 
			p."PersonID" as "ID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
		UNION ALL
		SELECT 
			p_1."PersonID" as "ID"
		FROM
			"Person" p_1
		WHERE
			p_1."PersonID" <> 1
	) t

