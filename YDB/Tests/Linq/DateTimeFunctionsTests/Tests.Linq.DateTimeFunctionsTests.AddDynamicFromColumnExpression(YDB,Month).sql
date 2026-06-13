-- YDB Ydb
DECLARE $part1 Int32
SET     $part1 = 4
DECLARE $part2 Int32
SET     $part2 = 4

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.DateTimeValue), Unwrap(CAST(((t.SmallIntValue + $part1) - $part2) AS Int32?)))) as c1
FROM
	LinqDataTypes t

