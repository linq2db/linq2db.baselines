-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.DateTimeValue), Unwrap(CAST(t.SmallIntValue AS Int32?)))) as c1
FROM
	LinqDataTypes t

