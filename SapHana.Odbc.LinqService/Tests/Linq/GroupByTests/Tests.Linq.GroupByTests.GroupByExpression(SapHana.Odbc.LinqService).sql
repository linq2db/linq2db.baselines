BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN("gr"."ParentID"), ?)
FROM
	"Parent" "gr"

