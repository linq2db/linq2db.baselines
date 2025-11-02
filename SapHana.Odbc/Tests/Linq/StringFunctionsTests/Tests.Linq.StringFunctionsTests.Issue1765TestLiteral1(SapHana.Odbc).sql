-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG("t"."Value4", ' -> ')
FROM
	"SampleClass" "t"

