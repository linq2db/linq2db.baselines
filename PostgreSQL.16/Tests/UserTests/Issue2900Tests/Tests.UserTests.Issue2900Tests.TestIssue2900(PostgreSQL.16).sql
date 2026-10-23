-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."HasValue",
	t1."Value_1"
FROM
	"Request" a
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as "Value_1",
				"a_Metrics"."Value" IS NOT NULL as "HasValue"
			FROM
				"Metric" "a_Metrics"
			WHERE
				a."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) t1 ON 1=1

