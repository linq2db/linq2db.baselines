-- PostgreSQL.9.5 PostgreSQL
SELECT
	g_1."ParentID",
	g_1."Value1",
	COUNT(*)
FROM
	"Parent" g_1
GROUP BY
	g_1."ParentID",
	g_1."Value1"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

