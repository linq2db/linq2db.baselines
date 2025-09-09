BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	(
		SELECT
			l."ParentID" + 1
		FROM
			"Child" l
		LIMIT 1
	)
FROM
	"Parent" sep

