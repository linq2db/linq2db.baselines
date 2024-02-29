BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Seconds_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000)) / 3600
FROM
	"LinqDataTypes" "t"

