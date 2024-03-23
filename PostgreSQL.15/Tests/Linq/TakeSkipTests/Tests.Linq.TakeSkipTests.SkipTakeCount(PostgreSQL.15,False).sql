BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		LIMIT 5 OFFSET 2 
	) t2

