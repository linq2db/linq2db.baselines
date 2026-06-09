-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.DateTimeValue), Unwrap(CAST(t.SmallIntValue AS Int32?)) * 3))))) as Date_1
FROM
	LinqDataTypes t

