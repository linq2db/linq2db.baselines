-- PostgreSQL.18 PostgreSQL12

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			"Child" t1
		LIMIT 5
	) t2

