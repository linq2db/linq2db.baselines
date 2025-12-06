-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GroupId",
	MAX("g_1"."DataValue"),
	MAX("g_1"."DataValue"),
	MAX(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT "g_1"."DataValue"),
	MAX(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
GROUP BY
	"g_1"."GroupId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

