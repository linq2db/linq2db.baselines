BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
	)

