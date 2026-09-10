-- YDB Ydb
DECLARE $part1 Int32
SET     $part1 = 4
DECLARE $part2 Int32
SET     $part2 = 4

SELECT
	t.DateTimeValue + DateTime::IntervalFromHours((t.SmallIntValue + $part1) - $part2) as c1
FROM
	LinqDataTypes t

