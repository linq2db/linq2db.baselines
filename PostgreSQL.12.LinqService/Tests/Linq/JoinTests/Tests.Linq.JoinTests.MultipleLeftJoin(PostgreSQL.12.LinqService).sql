BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	"childLeftJoin"."ChildID",
	"grandChildLeftJoin"."GrandChildID"
FROM
	"Parent" t1
		LEFT JOIN "GrandChild" "grandChildLeftJoin" ON t1."ParentID" = "grandChildLeftJoin"."ParentID"
		LEFT JOIN "Child" "childLeftJoin" ON t1."ParentID" = "childLeftJoin"."ParentID"

