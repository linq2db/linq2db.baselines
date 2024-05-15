BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1"
		CROSS JOIN "GetParentByID"(?) "p"

