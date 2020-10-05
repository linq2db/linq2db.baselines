BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 0
DECLARE @Value1_1  -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + ?),
	?
FROM
	"Parent" "p"

