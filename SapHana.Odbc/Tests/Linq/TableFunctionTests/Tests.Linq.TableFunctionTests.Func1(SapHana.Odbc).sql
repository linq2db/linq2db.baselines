BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"GetParentByID"(?) "p"

