-- PostgreSQL.13 PostgreSQL12

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

