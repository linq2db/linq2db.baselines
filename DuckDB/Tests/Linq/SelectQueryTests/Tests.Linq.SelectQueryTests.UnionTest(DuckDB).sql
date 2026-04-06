-- DuckDB

SELECT
	CURRENT_TIMESTAMP + CAST(t."Value" * Interval '1 Day' AS INTERVAL),
	CURRENT_TIMESTAMP + CAST(2 * Interval '1 Day' AS INTERVAL)
FROM
	SampleClass t
WHERE
	t."Value" = 1
UNION
SELECT
	CURRENT_TIMESTAMP + CAST(3 * Interval '1 Day' AS INTERVAL),
	CURRENT_TIMESTAMP + CAST(4 * Interval '1 Day' AS INTERVAL)

-- DuckDB

SELECT
	v_1.Value2
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + CAST(v."Value" * Interval '1 Day' AS INTERVAL) as Value1,
			CURRENT_TIMESTAMP + CAST(2 * Interval '1 Day' AS INTERVAL) as Value2
		FROM
			SampleClass v
		WHERE
			v."Value" = 1
		UNION
		SELECT
			CURRENT_TIMESTAMP + CAST(3 * Interval '1 Day' AS INTERVAL) as Value1,
			CURRENT_TIMESTAMP + CAST(4 * Interval '1 Day' AS INTERVAL) as Value2
	) v_1

