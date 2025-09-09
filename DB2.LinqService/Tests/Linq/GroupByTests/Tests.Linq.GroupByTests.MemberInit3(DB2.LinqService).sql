BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"g_1"."ParentID",
	"g_1"."ChildID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."ChildID"

