BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Months("t"."DateTimeValue", "t"."SmallIntValue" * 3) as Date)
FROM
	"LinqDataTypes" "t"

