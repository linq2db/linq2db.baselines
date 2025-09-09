BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN("gr"."ParentID"), CAST(@defValue AS Int))
FROM
	"Parent" "gr"

