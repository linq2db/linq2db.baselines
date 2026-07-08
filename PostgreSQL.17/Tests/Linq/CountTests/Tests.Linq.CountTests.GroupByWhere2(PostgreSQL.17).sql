-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	COUNT(*) > 2

