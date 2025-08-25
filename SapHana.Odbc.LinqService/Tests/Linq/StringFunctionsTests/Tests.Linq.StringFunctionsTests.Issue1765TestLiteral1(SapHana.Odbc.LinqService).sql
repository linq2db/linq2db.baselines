BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	STRING_AGG("t"."Value4", ' -> ')
FROM
	"SampleClass" "t"

