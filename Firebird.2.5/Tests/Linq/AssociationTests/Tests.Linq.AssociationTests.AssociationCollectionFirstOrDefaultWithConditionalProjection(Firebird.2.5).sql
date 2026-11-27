-- Firebird.2.5 Firebird
SELECT
	(
		SELECT FIRST 1
			CASE
				WHEN "a_Metrics"."Value" IS NOT NULL THEN '1'
				ELSE '0'
			END
		FROM
			"RequestMetricRow" "a_Metrics"
		WHERE
			"a"."Id" = "a_Metrics"."RequestId"
	),
	(
		SELECT FIRST 1
			"a_Metrics_1"."Value"
		FROM
			"RequestMetricRow" "a_Metrics_1"
		WHERE
			"a"."Id" = "a_Metrics_1"."RequestId"
	)
FROM
	"RequestWithMetrics" "a"

