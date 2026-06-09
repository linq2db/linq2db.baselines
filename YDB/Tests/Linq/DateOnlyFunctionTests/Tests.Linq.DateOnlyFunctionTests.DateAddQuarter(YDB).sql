-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftMonths(DateTime::Split(t.TransactionDate), Unwrap(CAST(-1 AS Int32?)) * 3)) as Value_1
FROM
	Transactions t

