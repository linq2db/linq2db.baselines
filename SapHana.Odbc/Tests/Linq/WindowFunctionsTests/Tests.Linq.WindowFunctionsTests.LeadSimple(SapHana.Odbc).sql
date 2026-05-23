-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	LEAD("t"."IntValue") OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

