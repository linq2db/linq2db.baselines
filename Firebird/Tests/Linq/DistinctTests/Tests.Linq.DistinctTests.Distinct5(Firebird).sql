BeforeExecute
-- Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	Cast(@Value1 as Int)
FROM
	"Parent" "p"

