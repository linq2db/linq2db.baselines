BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"a_Child"."ParentID",
	"g_1"."GrandChildID"
FROM
	"GrandChild" "g_1"
		INNER JOIN "Child" "a_Child" ON "g_1"."ParentID" = "a_Child"."ParentID" AND "g_1"."ChildID" = "a_Child"."ChildID"

