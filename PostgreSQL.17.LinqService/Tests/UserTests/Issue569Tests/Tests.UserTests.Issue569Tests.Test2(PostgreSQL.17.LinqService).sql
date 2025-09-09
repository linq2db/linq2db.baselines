BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	parent_1."ParentID",
	child_1."ChildID",
	"grandChild_1"."GrandChildID"
FROM
	"Parent" parent_1
		CROSS JOIN "Child" child_1
		LEFT JOIN "GrandChild" "grandChild_1" ON child_1."ParentID" = "grandChild_1"."ParentID" AND child_1."ChildID" = "grandChild_1"."ChildID"

