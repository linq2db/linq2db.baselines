-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST(Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000)) AS BigInt) AS Double) / 36000000000
FROM
	"LinqDataTypes" "t"

