BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @v1 Integer(4) -- Int32
SET     @v1 = 1

UPDATE
	"Parent" "p"
SET
	"Value1" = @v1
WHERE
	"p"."Value1" = @v1

