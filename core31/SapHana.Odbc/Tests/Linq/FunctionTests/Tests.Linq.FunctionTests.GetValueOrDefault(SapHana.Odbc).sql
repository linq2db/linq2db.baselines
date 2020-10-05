BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	Coalesce("p"."Value1", 0) > 0

