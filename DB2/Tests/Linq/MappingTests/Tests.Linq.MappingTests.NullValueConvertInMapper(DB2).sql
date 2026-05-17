-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <= 2
ORDER BY
	"p"."ParentID"

