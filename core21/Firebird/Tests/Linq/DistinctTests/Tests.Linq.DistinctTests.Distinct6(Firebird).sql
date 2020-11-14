BeforeExecute
-- Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID"),
	Cast(@Value1 as Int)
FROM
	"Parent" "p"

