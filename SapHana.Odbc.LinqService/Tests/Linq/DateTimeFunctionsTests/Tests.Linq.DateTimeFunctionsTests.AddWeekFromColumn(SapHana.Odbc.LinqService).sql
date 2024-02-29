BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."DateTimeValue", "t"."SmallIntValue" * 7)
FROM
	"LinqDataTypes" "t"

