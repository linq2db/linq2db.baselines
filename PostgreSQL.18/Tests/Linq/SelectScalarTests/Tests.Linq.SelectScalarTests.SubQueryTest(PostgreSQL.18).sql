-- PostgreSQL.18 PostgreSQL13

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

