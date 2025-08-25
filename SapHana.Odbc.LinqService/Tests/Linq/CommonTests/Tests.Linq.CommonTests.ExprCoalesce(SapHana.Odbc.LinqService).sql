BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Coalesce("p"."Value1", 100) + 50
FROM
	"Parent" "p"

