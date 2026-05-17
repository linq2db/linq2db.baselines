-- DuckDB
DECLARE $part1  -- Int32
SET     $part1 = 4
DECLARE $part2  -- Int32
SET     $part2 = 4

SELECT
	CAST(t.DateTimeValue + (((t.SmallIntValue + $part1) - $part2) * Interval '1 Day') * 7 AS DATE)
FROM
	LinqDataTypes t

