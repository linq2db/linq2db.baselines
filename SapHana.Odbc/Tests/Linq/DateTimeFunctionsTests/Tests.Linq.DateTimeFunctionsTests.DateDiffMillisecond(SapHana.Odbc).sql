BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("t"."DateTimeValue", Add_Nano100("t"."DateTimeValue", 20234567890000)) / 10000
FROM
	"LinqDataTypes" "t"

