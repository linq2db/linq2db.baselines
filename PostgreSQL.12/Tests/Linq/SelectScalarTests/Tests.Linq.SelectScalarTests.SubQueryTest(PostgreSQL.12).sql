BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

