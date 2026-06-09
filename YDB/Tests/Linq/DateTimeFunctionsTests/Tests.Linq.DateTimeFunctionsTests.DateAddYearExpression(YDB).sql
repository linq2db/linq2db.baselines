-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 11

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.DateTimeValue), Unwrap(CAST($Value AS Int32?))))))) as Date_1
FROM
	LinqDataTypes t

