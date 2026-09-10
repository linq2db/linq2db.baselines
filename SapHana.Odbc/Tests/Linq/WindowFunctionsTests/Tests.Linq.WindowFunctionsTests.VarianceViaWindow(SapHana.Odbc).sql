-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	VAR("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

