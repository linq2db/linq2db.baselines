BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			"Child" t1
	)

