BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 2023456789 / 1000)) / 10000
FROM
	"LinqDataTypes" "t"

