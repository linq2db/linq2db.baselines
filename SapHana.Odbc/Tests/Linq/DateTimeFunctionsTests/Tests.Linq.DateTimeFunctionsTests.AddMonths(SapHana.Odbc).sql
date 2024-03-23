BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Months("t"."DateTimeValue", -2) as Date)
FROM
	"LinqDataTypes" "t"

