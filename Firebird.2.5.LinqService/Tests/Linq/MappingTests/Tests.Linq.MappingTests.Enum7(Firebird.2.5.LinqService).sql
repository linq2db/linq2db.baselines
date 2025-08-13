BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @v1 Integer -- Int32
SET     @v1 = 1

UPDATE
	"Parent" "p"
SET
	"Value1" = CAST(@v1 AS Int)
WHERE
	"p"."Value1" = CAST(@v1 AS Int)

