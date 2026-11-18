-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."ParentID",
	"m_1"."Value1"
FROM
	"Parent" "m_1"
ORDER BY
	"m_1"."ParentID"
FETCH NEXT 3 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

