-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		OFFSET 2 
	) t2

