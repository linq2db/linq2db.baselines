-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."HasValue",
	t1."Value_1"
FROM
	"Request" a
		OUTER APPLY (
			SELECT
				a_Metrics."Value" as "Value_1",
				CASE
					WHEN a_Metrics."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "HasValue"
			FROM
				"Metric" a_Metrics
			WHERE
				a."Id" = a_Metrics."RequestId"
			FETCH NEXT 1 ROWS ONLY
		) t1

