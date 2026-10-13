-- PostgreSQL.9.2 PostgreSQL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."Value1" IS NOT NULL AND p."Value1" > 1
	)

