BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @defValue Integer(4) -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN("gr"."ParentID"), CAST(@defValue AS Int))
FROM
	"Parent" "gr"

