-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.DateTimeValue), Unwrap(CAST(11 AS Int32?))))))) as Date_1
FROM
	LinqDataTypes t

