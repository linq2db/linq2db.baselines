-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	MAX(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

