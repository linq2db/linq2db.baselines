-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

