-- YDB Ydb

SELECT
	(DateTime::GetMonth(t.TransactionDate) + 2) / 3 as c1
FROM
	Transactions t

