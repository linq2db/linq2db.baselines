BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1_1  -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", MOD("p"."ParentID", 2)),
	?
FROM
	"Parent" "p"

