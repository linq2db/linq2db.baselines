BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	SUM(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

