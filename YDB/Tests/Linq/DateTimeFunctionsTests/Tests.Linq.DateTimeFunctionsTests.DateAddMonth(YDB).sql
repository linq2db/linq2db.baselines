-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.DateTimeValue), Unwrap(CAST(2 AS Int32?))))))) as Date_1
FROM
	LinqDataTypes t

