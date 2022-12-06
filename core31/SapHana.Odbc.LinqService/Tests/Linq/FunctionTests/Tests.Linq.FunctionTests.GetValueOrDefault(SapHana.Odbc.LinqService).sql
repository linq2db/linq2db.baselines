BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @_default  -- Int32
SET     @_default = 0

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	Coalesce("p"."Value1", ?) > 0

