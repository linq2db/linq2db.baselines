-- PostgreSQL.15 PostgreSQL12
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."Value1" IS NOT NULL AND p."Value1" <= 0
	)

