-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

