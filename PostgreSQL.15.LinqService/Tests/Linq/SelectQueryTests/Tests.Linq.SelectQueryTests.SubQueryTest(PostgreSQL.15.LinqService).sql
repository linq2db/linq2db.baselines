BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t_1."Id",
	t_1."Value",
	t2."Value1",
	t2."Value2"
FROM
	"SampleClass" t_1
		LEFT JOIN (
			SELECT
				t1."Value1",
				t1."Value2"
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + t."Value" * Interval '1 Day' as "Value1",
						CURRENT_TIMESTAMP + 2 * Interval '1 Day' as "Value2"
					FROM
						"SampleClass" t
					WHERE
						t."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 * Interval '1 Day' as "Value1",
						CURRENT_TIMESTAMP + 4 * Interval '1 Day' as "Value2"
				) t1
			LIMIT 1
		) t2 ON 1=1

