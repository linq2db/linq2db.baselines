BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min("t1"."ParentID"), ?)
FROM
	"Parent" "t1"

