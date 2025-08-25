BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."cond_1",
	t1."cond"
FROM
	"Request" a
		OUTER APPLY (
			SELECT
				a_Metrics."Value" as "cond",
				CASE
					WHEN a_Metrics."Value" IS NOT NULL THEN 1
					ELSE 0
				END as "cond_1"
			FROM
				"Metric" a_Metrics
			WHERE
				a."Id" = a_Metrics."RequestId"
			FETCH NEXT 1 ROWS ONLY
		) t1

