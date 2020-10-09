BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + Cast(@p1 as Int)), 
	Cast(@Value1_1 as Int)
FROM
	"Parent" "p"

