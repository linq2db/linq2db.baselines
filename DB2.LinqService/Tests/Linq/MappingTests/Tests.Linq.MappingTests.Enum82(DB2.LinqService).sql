BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @testValue Integer(4) -- Int32
SET     @testValue = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = @testValue

