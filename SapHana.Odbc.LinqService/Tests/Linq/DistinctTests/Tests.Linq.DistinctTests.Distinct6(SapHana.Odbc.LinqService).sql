BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID"),
	?
FROM
	"Parent" "p"

