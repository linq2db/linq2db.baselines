BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 2023456.7890000001)) / 10000
FROM
	"LinqDataTypes" "t"

