BeforeExecute
-- Firebird
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID"),
	Cast(@Value1_1 as Int)
FROM
	"Parent" "p"

