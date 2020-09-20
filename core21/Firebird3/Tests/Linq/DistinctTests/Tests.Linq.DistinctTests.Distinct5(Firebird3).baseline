BeforeExecute
-- Firebird3 Firebird
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	Cast(@Value1_1 as Int)
FROM
	"Parent" "p"

