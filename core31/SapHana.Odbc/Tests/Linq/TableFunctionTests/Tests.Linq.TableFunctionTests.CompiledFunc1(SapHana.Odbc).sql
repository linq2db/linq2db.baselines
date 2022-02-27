BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"GetParentByID"(?) "p"

