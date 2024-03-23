BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID"),
	?
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

