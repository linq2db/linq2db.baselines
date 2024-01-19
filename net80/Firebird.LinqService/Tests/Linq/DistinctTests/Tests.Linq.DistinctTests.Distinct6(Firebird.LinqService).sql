BeforeExecute
-- Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + Cast(@ParentID as Int)),
	Cast(@Value1 as Int)
FROM
	"Parent" "p"

