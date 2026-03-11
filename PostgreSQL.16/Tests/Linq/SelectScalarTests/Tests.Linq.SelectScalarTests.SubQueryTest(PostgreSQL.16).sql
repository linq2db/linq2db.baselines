-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

