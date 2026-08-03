-- Firebird.4 Firebird4
SELECT
	"t1"."Value_1",
	"t1"."HasValue"
FROM
	"Request" "a"
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "HasValue",
				"a_Metrics"."Value" IS NOT NULL as "Value_1"
			FROM
				"Metric" "a_Metrics"
			WHERE
				"a"."Id" = "a_Metrics"."RequestId"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

