BeforeExecute
-- Firebird.3 Firebird3
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN("gr"."ParentID"), CAST(@defValue AS Int))
FROM
	"Parent" "gr"

