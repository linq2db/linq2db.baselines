BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Int32
SET     @p_1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1",
	"GetParentByID"(?) "p"

