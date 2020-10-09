BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			"Parent" p
	)

