BeforeExecute
-- Firebird.3 Firebird3
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min("t1"."ParentID"), Cast(@defValue as Int))
FROM
	"Parent" "t1"

