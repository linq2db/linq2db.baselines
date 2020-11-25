BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
	)

