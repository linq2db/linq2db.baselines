-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."IntValue"
FROM
	"TestTable5" "t"
WHERE
	BITAND("t"."IntValue", 1) <> 0

