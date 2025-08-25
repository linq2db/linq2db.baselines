BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."cond_1",
	"t1"."cond"
FROM
	"Request" "a"
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "cond",
				"a_Metrics"."Value" IS NOT NULL as "cond_1"
			FROM
				"Metric" "a_Metrics"
			WHERE
				"a"."Id" = "a_Metrics"."RequestId"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

