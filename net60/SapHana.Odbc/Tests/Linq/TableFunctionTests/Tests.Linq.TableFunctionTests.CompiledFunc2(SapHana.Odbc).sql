BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1",
	"GetParentByID"(?) "p"

