BeforeExecute
-- Firebird3 Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

