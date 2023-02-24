BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Seconds("t"."DateTimeValue", "t"."SmallIntValue" * 60)
FROM
	"LinqDataTypes" "t"

