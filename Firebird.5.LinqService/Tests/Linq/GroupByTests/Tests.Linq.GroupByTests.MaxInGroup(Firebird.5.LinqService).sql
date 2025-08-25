BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"g_1"."GroupId",
	MAX("g_1"."DataValue"),
	MAX("g_1"."DataValue"),
	MAX(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT "g_1"."DataValue"),
	MAX(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN Mod("g_1"."DataValue", 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

