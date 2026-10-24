-- YDB Ydb
DECLARE $Date Int32
SET     $Date = 1

SELECT
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.DateTimeValue), Unwrap(CAST($Date AS Int32?))))))) as Date_1
FROM
	LinqDataTypes t

