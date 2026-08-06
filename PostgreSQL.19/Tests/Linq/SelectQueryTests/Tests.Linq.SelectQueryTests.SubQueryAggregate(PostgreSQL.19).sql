-- PostgreSQL.19 PostgreSQL12
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t2
	)
LIMIT 2

