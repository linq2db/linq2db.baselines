BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p1"."ParentID",
	"p1"."Value1"
FROM
	"Parent" "p1"
UNION
SELECT
	"p2"."ParentID",
	CAST(NULL AS Int)
FROM
	"Parent" "p2"

