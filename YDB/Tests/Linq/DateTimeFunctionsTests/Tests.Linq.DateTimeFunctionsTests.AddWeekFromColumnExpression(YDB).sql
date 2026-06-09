-- YDB Ydb
DECLARE $part1 Int32
SET     $part1 = 4
DECLARE $part2 Int32
SET     $part2 = 4

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue + DateTime::IntervalFromDays(((t.SmallIntValue + $part1) - $part2) * 7)))) as Date_1
FROM
	LinqDataTypes t

