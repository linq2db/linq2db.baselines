-- DuckDB

SELECT
	now() + t."Value" * Interval '1 Day',
	now() + 2 * Interval '1 Day'
FROM
	SampleClass t
WHERE
	t."Value" = 1
UNION
SELECT
	now() + 3 * Interval '1 Day',
	now() + 4 * Interval '1 Day'

-- DuckDB

SELECT
	v_1.Value2
FROM
	(
		SELECT
			now() + v."Value" * Interval '1 Day' as Value1,
			now() + 2 * Interval '1 Day' as Value2
		FROM
			SampleClass v
		WHERE
			v."Value" = 1
		UNION
		SELECT
			now() + 3 * Interval '1 Day' as Value1,
			now() + 4 * Interval '1 Day' as Value2
	) v_1

