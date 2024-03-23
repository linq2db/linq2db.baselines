BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		OFFSET 2 
	) t2

