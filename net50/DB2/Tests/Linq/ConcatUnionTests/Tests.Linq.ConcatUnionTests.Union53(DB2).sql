BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" "p1"
UNION
SELECT
	Cast(NULL as Int),
	"p2"."Value1"
FROM
	"Parent" "p2"

