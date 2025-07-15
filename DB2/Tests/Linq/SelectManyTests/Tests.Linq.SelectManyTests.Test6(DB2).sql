BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Child"."ParentID",
	"a_Child"."ChildID"
FROM
	"Parent" "t1",
	"GrandChild" "g_1",
	"Parent" "c_1"
		LEFT JOIN "Child" "a_Child" ON "g_1"."ParentID" = "a_Child"."ParentID" AND "g_1"."ChildID" = "a_Child"."ChildID"

