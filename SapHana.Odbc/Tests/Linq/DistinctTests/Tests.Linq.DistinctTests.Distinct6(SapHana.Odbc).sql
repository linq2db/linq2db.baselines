BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 0
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + ?),
	?
FROM
	"Parent" "p"

