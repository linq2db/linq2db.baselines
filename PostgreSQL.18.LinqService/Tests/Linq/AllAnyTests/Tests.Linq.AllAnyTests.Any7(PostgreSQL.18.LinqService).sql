BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
	)

