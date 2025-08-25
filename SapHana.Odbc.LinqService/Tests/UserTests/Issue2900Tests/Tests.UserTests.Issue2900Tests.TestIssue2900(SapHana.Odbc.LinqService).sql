BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."cond_1",
	"t1"."cond"
FROM
	"Request" "a"
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "cond",
				CASE
					WHEN "a_Metrics"."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "cond_1"
			FROM
				"Metric" "a_Metrics"
			WHERE
				"a"."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) "t1" ON 1=1

