BeforeExecute
-- Firebird
DECLARE @v1 Integer -- Int32
SET     @v1 = 1
DECLARE @v2 Integer -- Int32
SET     @v2 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @v1
WHERE
	"Parent"."Value1" = @v2

