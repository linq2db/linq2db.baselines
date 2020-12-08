BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @v1 Integer(4) -- Int32
SET     @v1 = 1
DECLARE @v2 Integer(4) -- Int32
SET     @v2 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @v1
WHERE
	"Parent"."Value1" = @v2

