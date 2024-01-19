BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Days_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000))
FROM
	"LinqDataTypes" "t"

