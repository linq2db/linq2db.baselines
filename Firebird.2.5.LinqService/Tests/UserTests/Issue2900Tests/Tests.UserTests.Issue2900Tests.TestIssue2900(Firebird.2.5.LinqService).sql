BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT FIRST 1
			CASE
				WHEN "a_Metrics"."Value" IS NOT NULL THEN '1'
				ELSE '0'
			END
		FROM
			"Metric" "a_Metrics"
		WHERE
			"a"."Id" = "a_Metrics"."RequestId"
	),
	(
		SELECT FIRST 1
			"a_Metrics_1"."Value"
		FROM
			"Metric" "a_Metrics_1"
		WHERE
			"a"."Id" = "a_Metrics_1"."RequestId"
	)
FROM
	"Request" "a"

