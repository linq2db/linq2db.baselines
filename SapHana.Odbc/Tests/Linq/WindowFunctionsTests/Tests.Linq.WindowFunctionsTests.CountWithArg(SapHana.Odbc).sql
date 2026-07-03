-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT("t"."NullableIntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

