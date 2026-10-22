-- DB2 DB2.LUW DB2LUW
SELECT
	"g_1"."ParentID",
	"g_1"."Value1",
	COUNT(*)
FROM
	"Parent" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."Value1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

