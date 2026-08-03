-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Value_1",
	"t1"."HasValue"
FROM
	"Request" "a"
		LEFT JOIN (
			SELECT
				"a_Metrics"."Value" as "HasValue",
				CAST("a_Metrics"."Value" IS NOT NULL AS smallint) as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY "a_Metrics"."RequestId" ORDER BY "a_Metrics"."RequestId") as "rn",
				"a_Metrics"."RequestId"
			FROM
				"Metric" "a_Metrics"
		) "t1" ON "a"."Id" = "t1"."RequestId" AND "t1"."rn" = 1

