BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG("t"."Value1", ' -> ')
FROM
	"SampleClass" "t"

