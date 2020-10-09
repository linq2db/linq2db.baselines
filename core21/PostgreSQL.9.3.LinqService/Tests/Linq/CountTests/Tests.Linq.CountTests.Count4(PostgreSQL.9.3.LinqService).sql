BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

