-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."GroupId",
	AVG("g_1"."DataValue"),
	AVG("g_1"."DataValue"),
	AVG(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT "g_1"."DataValue"),
	AVG(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN Mod(Int("g_1"."DataValue"), 2) = 0 THEN "g_1"."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" "g_1"
WHERE
	"g_1"."DataValue" IS NOT NULL
GROUP BY
	"g_1"."GroupId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

