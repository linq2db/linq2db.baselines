BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."IntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	BITAND("t"."IntValue", 1) <> 0

