-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
	)

