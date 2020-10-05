BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Months("t"."DateTimeValue", "t"."SmallIntValue" * 3)
FROM
	"LinqDataTypes" "t"

