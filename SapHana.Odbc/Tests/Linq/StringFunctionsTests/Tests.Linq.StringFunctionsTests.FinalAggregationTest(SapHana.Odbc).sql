-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG("t1"."Value1", ' -> ')
FROM
	"SampleClass" "t1"

