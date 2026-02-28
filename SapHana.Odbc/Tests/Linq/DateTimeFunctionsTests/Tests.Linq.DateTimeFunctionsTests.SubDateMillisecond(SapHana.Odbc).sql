-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 2023456.7890000001)) / 10000 AS Double)
FROM
	"LinqDataTypes" "t"

