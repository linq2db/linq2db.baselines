BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" c_1
		WHERE
			c_1."Value1" IS NULL
	)

