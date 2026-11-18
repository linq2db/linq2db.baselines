-- PostgreSQL.9.3 PostgreSQL
SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

