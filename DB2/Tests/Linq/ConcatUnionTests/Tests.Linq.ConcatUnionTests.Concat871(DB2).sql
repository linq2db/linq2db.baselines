BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."Value1",
	CAST(NULL AS Int)
FROM
	"Parent" "c_1"
UNION ALL
SELECT
	CAST(NULL AS Int),
	"c_2"."ParentID"
FROM
	"Child" "c_2"

