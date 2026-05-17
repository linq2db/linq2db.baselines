-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	"p1"."ParentID",
	"p1"."Value1"
FROM
	"Parent" "p1"
UNION ALL
SELECT
	Coalesce("p2"."Value1", 0),
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p2"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

