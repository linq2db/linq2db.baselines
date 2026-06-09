-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.TransactionDate), Unwrap(CAST(2 AS Int32?)))) as Value_1
FROM
	Transactions t

