-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

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

