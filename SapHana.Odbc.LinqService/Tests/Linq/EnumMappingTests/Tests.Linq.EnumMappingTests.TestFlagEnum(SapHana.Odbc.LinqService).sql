BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."ID",
	"t"."IntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	BITAND("t"."IntValue", 1) <> 0

