BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" c_1
		WHERE
			c_1."Value1" IS NULL
	)

