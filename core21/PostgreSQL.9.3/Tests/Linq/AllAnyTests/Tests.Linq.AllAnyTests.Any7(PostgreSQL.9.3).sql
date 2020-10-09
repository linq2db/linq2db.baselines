BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			"Child" t1
	)

