-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

