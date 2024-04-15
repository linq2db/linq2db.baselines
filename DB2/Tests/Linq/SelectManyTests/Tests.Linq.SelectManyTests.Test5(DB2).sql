BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Child"."ParentID",
	"a_Child"."ChildID"
FROM
	"Parent" "t1",
	"GrandChild" "g_1",
	"Parent" "c_1"
		LEFT JOIN "Child" "a_Child" ON ("g_1"."ParentID" = "a_Child"."ParentID" OR "g_1"."ParentID" IS NULL AND "a_Child"."ParentID" IS NULL) AND ("g_1"."ChildID" = "a_Child"."ChildID" OR "g_1"."ChildID" IS NULL AND "a_Child"."ChildID" IS NULL)

