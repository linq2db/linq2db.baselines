BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

