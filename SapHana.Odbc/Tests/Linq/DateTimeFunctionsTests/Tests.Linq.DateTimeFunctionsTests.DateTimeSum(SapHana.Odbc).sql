-- SapHana.Odbc SapHanaOdbc
SELECT
	"g_1"."ID",
	COUNT(*),
	SUM(CAST(Nano100_Between("g_1"."DateTimeValue", Add_Days("g_1"."DateTimeValue", 1)) / 10000 AS Integer)),
	MAX(CAST(Nano100_Between("g_1"."DateTimeValue", Add_Days("g_1"."DateTimeValue", 1)) / 10000 AS Integer))
FROM
	"LinqDataTypes" "g_1"
GROUP BY
	"g_1"."ID"

