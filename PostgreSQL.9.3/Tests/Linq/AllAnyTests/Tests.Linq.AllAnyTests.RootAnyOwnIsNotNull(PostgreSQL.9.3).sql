-- PostgreSQL.9.3 PostgreSQL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."Value1" IS NOT NULL AND p."Value1" > 1
	)

