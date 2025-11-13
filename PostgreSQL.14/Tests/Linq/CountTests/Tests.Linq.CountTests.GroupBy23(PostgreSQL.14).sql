-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE g_1."ParentID" < 2)
FROM
	"Parent" g_1
WHERE
	g_1."ParentID" > -1
GROUP BY
	g_1."Value1"

