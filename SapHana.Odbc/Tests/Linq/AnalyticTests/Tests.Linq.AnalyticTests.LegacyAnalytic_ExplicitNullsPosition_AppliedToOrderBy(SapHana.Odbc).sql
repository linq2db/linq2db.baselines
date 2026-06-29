-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("p"."Value1") OVER (ORDER BY "p"."Value1")
FROM
	"Parent" "p"

