-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT "t"."DataValue"),
	COUNT(DISTINCT CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN "t"."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN "t"."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN "t"."DataValue"
		ELSE NULL
	END),
	COUNT(CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN Mod(Int("t"."DataValue"), 2) = 0 THEN "t"."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT "t"."DataValue")
FROM
	"AggregationData" "t"
WHERE
	"t"."DataValue" IS NOT NULL
GROUP BY
	"t"."GroupId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."GroupId",
	"t1"."DataValue"
FROM
	"AggregationData" "t1"

