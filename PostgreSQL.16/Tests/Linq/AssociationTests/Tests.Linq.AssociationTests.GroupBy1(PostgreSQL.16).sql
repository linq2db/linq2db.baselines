-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" g_1
		LEFT JOIN "Parent" "a_Parent" ON g_1."ParentID" = "a_Parent"."ParentID"

