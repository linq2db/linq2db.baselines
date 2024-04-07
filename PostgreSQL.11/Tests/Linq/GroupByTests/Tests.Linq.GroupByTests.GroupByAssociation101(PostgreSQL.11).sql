BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Parent"."Value1"
FROM
	"GrandChild" t1
		INNER JOIN "Parent" "a_Parent" ON t1."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
HAVING
	Max(t1."ParentID") > 2

