BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Date(Add_Years("t"."DateTimeValue", 1))
FROM
	"LinqDataTypes" "t"

