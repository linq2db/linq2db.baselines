-- PostgreSQL.9.2 PostgreSQL
SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

