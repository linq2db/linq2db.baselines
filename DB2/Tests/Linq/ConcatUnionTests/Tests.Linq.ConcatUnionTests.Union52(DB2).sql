-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	CAST(NULL AS Int)
FROM
	"Parent" "p1"
UNION
SELECT
	"p2"."ParentID",
	"p2"."Value1"
FROM
	"Parent" "p2"

