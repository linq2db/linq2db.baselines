-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

