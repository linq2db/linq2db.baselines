-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			"Child" t1
		OFFSET 2 
	) t2

