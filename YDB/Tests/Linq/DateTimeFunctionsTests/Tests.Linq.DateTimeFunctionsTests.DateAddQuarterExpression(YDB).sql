-- YDB Ydb
DECLARE $Value Int32
SET     $Value = -1

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.DateTimeValue), Unwrap(CAST($Value AS Int32?)) * 3))))) as Date_1
FROM
	LinqDataTypes t

