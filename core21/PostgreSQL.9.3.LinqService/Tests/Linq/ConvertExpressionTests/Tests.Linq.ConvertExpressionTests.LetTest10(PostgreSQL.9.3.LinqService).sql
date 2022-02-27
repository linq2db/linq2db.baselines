BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
	)

