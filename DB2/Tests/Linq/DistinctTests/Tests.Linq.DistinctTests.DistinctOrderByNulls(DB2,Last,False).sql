-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"p"."Value1"
FROM
	"Parent" "p"
ORDER BY
	"p"."Value1"
FETCH NEXT 3 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

