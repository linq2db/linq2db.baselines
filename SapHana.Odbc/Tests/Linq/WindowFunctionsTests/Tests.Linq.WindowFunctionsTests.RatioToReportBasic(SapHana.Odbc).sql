-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	CAST("t"."IntValue" AS Double) / SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId")
FROM
	"WindowFunctionTestEntity" "t"

