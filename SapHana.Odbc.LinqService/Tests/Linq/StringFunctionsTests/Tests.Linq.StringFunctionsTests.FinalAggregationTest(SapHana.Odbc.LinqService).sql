BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	STRING_AGG("t"."Value1", ' -> ')
FROM
	"SampleClass" "t"

