-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	CAST(NULL AS Int)
FROM
	"Child" "c_1"
UNION ALL
SELECT
	CAST(NULL AS Int),
	"c_2"."Value1"
FROM
	"Parent" "c_2"

