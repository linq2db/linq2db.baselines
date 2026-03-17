-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Value_2",
	t1."Value_1"
FROM
	"Request" a
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "Value_1",
				"a_Metrics"."Value" IS NOT NULL as "Value_2"
			FROM
				"Metric" "a_Metrics"
			WHERE
				a."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) t1 ON 1=1

