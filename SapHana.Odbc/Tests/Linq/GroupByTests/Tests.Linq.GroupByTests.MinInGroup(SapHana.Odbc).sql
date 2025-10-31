-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."GroupId",
	MIN("g_1"."DataValue"),
	MIN("g_1"."DataValue"),
	MIN(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT "g_1"."DataValue"),
	MIN(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

