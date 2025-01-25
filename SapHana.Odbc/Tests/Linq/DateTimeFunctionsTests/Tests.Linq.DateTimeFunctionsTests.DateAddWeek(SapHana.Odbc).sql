BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Date(Add_Days("t"."DateTimeValue", -7))
FROM
	"LinqDataTypes" "t"

