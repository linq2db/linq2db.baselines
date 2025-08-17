BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"g_1"."ParentID"
FROM
	"Child" "gc"
		INNER JOIN "GrandChild" "g_1" ON "gc"."ParentID" = "g_1"."ParentID" AND "gc"."ChildID" = "g_1"."ChildID"
GROUP BY
	"g_1"."ParentID"

