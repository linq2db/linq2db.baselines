BeforeExecute
-- SapHana.Native SapHana
DECLARE @v1_1  -- Int32
SET     @v1_1 = 1
DECLARE @v1_1_1  -- Int32
SET     @v1_1_1 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = :"v1_1"
WHERE
	"Parent"."Value1" = :"v1_1_1"

