BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"parent_1"."ParentID",
	"child_1"."ChildID",
	"grandChild_1"."GrandChildID"
FROM
	"Parent" "parent_1",
	"Child" "child_1"
		LEFT JOIN "GrandChild" "grandChild_1" ON "child_1"."ParentID" = "grandChild_1"."ParentID" AND "child_1"."ChildID" = "grandChild_1"."ChildID"

