-- PostgreSQL.18 PostgreSQL12

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

