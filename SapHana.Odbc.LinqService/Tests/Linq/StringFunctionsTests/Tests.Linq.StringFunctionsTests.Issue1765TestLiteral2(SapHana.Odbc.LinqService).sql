BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	STRING_AGG("t1"."Value4", ' -> ')
FROM
	"SampleClass" "t1"

