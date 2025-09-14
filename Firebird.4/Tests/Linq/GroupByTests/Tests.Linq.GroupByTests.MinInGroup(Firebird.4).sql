BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"g_1"."GroupId",
	MIN("g_1"."DataValue"),
	MIN("g_1"."DataValue"),
	MIN(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT "g_1"."DataValue"),
	MIN(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

