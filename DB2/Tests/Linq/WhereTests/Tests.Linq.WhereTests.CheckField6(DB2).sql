BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Value1",
	"p"."Value1" * 100,
	"p"."ParentID",
	"p"."Value1" * 100
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1 AND "p"."Value1" * 100 > 0

