BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."Value1",
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 2 OR "p"."Value1" = 1

