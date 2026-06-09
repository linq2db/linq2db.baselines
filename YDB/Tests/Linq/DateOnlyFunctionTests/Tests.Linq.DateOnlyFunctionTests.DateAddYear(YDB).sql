-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.TransactionDate), Unwrap(CAST(12 AS Int32?)))) as Value_1
FROM
	Transactions t

