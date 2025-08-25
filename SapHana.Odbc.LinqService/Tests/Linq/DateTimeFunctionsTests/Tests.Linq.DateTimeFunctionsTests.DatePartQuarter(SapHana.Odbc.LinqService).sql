BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Floor((Month("t"."DateTimeValue") - 1) / 3) + 1
FROM
	"LinqDataTypes" "t"

