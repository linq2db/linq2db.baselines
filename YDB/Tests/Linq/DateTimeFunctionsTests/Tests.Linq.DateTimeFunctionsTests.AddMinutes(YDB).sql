-- YDB Ydb

SELECT
	DateTime::GetMinute(t.DateTimeValue + DateTime::IntervalFromMinutes(Unwrap(CAST(Double('-8') AS Int32)))) as Minute_1
FROM
	LinqDataTypes t

