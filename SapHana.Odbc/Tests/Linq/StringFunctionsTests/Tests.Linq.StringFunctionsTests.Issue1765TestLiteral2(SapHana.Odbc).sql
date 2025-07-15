BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG("t1"."Value4", ' -> ')
FROM
	"SampleClass" "t1"

