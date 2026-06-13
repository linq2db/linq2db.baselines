-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(d.DateTimeValue))) as Date_1
FROM
	LinqDataTypes d
WHERE
	DateTime::GetDayOfMonth(d.DateTimeValue) > 0

