BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	NULL
FROM
	"Parent" "p1"
UNION
SELECT
	NULL,
	"p2"."Value1"
FROM
	"Parent" "p2"

