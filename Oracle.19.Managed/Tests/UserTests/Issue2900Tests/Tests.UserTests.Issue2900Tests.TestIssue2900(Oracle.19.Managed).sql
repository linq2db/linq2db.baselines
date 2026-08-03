-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Value_1",
	t1."HasValue"
FROM
	"Request" a
		OUTER APPLY (
			SELECT
				a_Metrics."Value" as "HasValue",
				CASE
					WHEN a_Metrics."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "Value_1"
			FROM
				"Metric" a_Metrics
			WHERE
				a."Id" = a_Metrics."RequestId"
			FETCH NEXT 1 ROWS ONLY
		) t1

