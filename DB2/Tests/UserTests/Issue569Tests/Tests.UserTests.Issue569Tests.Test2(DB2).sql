BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"parent_1"."ParentID",
	"child_1"."ChildID",
	"grandChild_1"."GrandChildID"
FROM
	"Parent" "parent_1",
	"Child" "child_1"
		LEFT JOIN "GrandChild" "grandChild_1" ON "child_1"."ParentID" = "grandChild_1"."ParentID" AND "grandChild_1"."ParentID" IS NOT NULL AND "child_1"."ChildID" = "grandChild_1"."ChildID" AND "grandChild_1"."ChildID" IS NOT NULL

