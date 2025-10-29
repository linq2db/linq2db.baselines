-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."GroupId",
	AVG("g_1"."DataValue"),
	AVG("g_1"."DataValue"),
	AVG(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT "g_1"."DataValue"),
	AVG(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN MOD("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
WHERE
	"g_1"."DataValue" IS NOT NULL
GROUP BY
	"g_1"."GroupId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

