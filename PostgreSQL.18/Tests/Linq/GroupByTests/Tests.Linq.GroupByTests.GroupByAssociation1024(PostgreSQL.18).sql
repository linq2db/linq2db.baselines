-- PostgreSQL.18 PostgreSQL

SELECT
	"a_Parent"."Value1"
FROM
	"GrandChild" g_1
		INNER JOIN "Parent" "a_Parent" ON g_1."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
HAVING
	COUNT(*) FILTER (WHERE g_1."ChildID" >= 20) > 2 AND
	SUM(g_1."ParentID") FILTER (WHERE g_1."ChildID" >= 19) > 0 AND
	MAX(g_1."ParentID") FILTER (WHERE g_1."ChildID" >= 19) > 0 AND
	MAX(g_1."ParentID") FILTER (WHERE g_1."ChildID" >= 18) > 0

