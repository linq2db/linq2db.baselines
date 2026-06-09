-- YDB Ydb

SELECT
	DateTime::GetSecond(t.DateTimeValue + DateTime::IntervalFromSeconds(Unwrap(CAST(Double('-35') AS Int32)))) as Second_1
FROM
	LinqDataTypes t

