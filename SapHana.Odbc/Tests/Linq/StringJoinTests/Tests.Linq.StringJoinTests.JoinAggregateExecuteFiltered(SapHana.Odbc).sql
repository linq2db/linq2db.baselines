-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG(Coalesce("x"."NullableValue", ''), ', ')
FROM
	"SampleClass" "x"
WHERE
	"x"."NullableValue" IS NOT NULL AND "x"."NullableValue" IN ('A', 'B')

