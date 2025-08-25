BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
UNION
SELECT
	"p2"."ParentID",
	CAST(NULL AS Int)
FROM
	"Parent" "p2"

