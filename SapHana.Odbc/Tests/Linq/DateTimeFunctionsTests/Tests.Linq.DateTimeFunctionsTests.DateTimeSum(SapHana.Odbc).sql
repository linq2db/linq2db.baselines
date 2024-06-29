BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_2"."ID",
	"g_2"."COUNT_1",
	"g_2"."SUM_1",
	CASE
		WHEN "g_2"."SUM_1" IS NOT NULL THEN 1
		ELSE 0
	END,
	"g_2"."MAX_1"
FROM
	(
		SELECT
			"g_1"."ID",
			COUNT(*) as "COUNT_1",
			SUM(Nano100_Between("g_1"."DateTimeValue", Add_Days("g_1"."DateTimeValue", 1)) / 10000) as "SUM_1",
			MAX(Nano100_Between("g_1"."DateTimeValue", Add_Days("g_1"."DateTimeValue", 1)) / 10000) as "MAX_1"
		FROM
			"LinqDataTypes" "g_1"
		GROUP BY
			"g_1"."ID"
	) "g_2"

