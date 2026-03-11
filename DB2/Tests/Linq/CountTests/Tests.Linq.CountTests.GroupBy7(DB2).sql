-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

