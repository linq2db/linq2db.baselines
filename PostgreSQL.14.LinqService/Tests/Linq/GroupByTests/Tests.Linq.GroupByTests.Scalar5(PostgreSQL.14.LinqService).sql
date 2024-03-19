BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			MAX(ch."ParentID")
		FROM
			"Child" ch
		WHERE
			g_1."ParentID" = ch."ParentID"
	)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

