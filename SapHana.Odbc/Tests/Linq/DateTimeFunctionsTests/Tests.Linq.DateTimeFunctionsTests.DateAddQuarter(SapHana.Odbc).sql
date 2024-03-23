BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Months("t"."DateTimeValue", -3) as Date)
FROM
	"LinqDataTypes" "t"

