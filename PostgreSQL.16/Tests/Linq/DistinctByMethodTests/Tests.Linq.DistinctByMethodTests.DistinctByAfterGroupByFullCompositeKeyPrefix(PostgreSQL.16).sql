-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT DISTINCT ON (Floor(g_1."ParentID"::decimal % 2)::Int)
	Floor(g_1."ParentID"::decimal % 2)::Int,
	g_1."Value1"
FROM
	"Parent" g_1
ORDER BY
	Floor(g_1."ParentID"::decimal % 2)::Int,
	g_1."Value1" NULLS FIRST

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

