BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	Coalesce("p"."Value1", ?)
FROM
	"Parent" "p"

