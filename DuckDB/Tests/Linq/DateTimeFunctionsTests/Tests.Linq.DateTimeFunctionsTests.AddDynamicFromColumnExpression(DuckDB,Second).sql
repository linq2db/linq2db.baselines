-- DuckDB
DECLARE $part1  -- Int32
SET     $part1 = 4
DECLARE $part2  -- Int32
SET     $part2 = 4

SELECT
	t.DateTimeValue + CAST(((t.SmallIntValue + CAST($part1 AS INTEGER)) - CAST($part2 AS INTEGER)) * Interval '1 Second' AS INTERVAL)
FROM
	LinqDataTypes t

