BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT 1
	)

