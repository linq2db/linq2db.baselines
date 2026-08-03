-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST(Nano100_Between("t"."DateTimeValue", Add_Nano100("t"."DateTimeValue", 20234567890000)) AS BigInt) AS Double) / 10000
FROM
	"LinqDataTypes" "t"

