-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."GrandChildID",
	"t1"."Value1"
FROM
	(
		SELECT DISTINCT
			"gc"."GrandChildID",
			"a_Parent"."Value1"
		FROM
			"GrandChild" "gc"
				LEFT JOIN "Child" "a_Child" ON "gc"."ParentID" = "a_Child"."ParentID" AND "gc"."ChildID" = "a_Child"."ChildID"
				LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
	) "t1"
ORDER BY
	"t1"."GrandChildID"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID",
	"a_Child"."ParentID",
	"a_Child"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"GrandChild" "t1"
		LEFT JOIN "Child" "a_Child" ON "t1"."ParentID" = "a_Child"."ParentID" AND "t1"."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"

