BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 100

SELECT
	Coalesce("p"."Value1", ?)
FROM
	"Parent" "p"

