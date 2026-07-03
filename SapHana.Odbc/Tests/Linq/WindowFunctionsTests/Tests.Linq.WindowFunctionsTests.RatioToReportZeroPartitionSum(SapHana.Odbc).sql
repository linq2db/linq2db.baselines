-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	CAST("t"."IntValue" AS Double) / NULLIF(CAST(SUM("t"."IntValue") OVER (PARTITION BY "t"."CategoryId") AS Double), 0)
FROM
	"WindowFunctionTestEntity" "t"

