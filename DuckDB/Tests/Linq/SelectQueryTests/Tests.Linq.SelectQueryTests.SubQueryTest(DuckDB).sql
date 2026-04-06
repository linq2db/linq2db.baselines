-- DuckDB

SELECT
	t_1.Id,
	t_1."Value",
	t2.Value1,
	t2.Value2
FROM
	SampleClass t_1
		LEFT JOIN (
			SELECT
				t1.Value1,
				t1.Value2
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + CAST(t."Value" * Interval '1 Day' AS INTERVAL) as Value1,
						CURRENT_TIMESTAMP + CAST(2 * Interval '1 Day' AS INTERVAL) as Value2
					FROM
						SampleClass t
					WHERE
						t."Value" = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + CAST(3 * Interval '1 Day' AS INTERVAL) as Value1,
						CURRENT_TIMESTAMP + CAST(4 * Interval '1 Day' AS INTERVAL) as Value2
				) t1
			LIMIT 1
		) t2 ON 1=1

