-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 6000)) AS Double) / 10000000
FROM
	"LinqDataTypes" "t"

