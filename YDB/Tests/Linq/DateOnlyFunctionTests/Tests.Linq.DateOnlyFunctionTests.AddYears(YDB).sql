-- YDB Ydb

SELECT
	DateTime::MakeTimestamp(DateTime::ShiftYears(DateTime::Split(t.TransactionDate), Unwrap(CAST(12 AS Int32?)))) as c1
FROM
	Transactions t

