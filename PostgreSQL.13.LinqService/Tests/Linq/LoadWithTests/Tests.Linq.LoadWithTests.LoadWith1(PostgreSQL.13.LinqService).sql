BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" "a_Parent" ON t."ParentID" = "a_Parent"."ParentID"
LIMIT 1

