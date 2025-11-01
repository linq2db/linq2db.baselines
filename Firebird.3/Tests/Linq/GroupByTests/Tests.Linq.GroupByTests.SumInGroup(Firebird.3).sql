-- Firebird.3 Firebird3

SELECT
	"g_1"."GroupId",
	SUM("g_1"."DataValue"),
	SUM("g_1"."DataValue"),
	SUM(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT "g_1"."DataValue"),
	SUM(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

-- Firebird.3 Firebird3

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

