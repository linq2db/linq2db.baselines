-- SapHana.Native SapHana
SELECT
	"t1"."HasValue",
	"t1"."Value_1"
FROM
	"Request" "a"
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "Value_1",
				CASE
					WHEN "a_Metrics"."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "HasValue"
			FROM
				"Metric" "a_Metrics"
			WHERE
				"a"."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) "t1" ON 1=1

