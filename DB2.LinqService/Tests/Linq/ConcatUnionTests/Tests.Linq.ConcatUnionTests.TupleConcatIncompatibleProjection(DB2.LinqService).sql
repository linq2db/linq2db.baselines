BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."Value1",
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" > 3
UNION ALL
SELECT
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p2"
WHERE
	"p2"."ParentID" <= 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

