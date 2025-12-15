-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	CAST(NULL AS Int)
FROM
	"Parent" "p1"
UNION
SELECT
	CAST(NULL AS Int),
	"p2"."Value1"
FROM
	"Parent" "p2"

