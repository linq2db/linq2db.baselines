-- YDB Ydb

SELECT
	DateTime::GetMonth(t.TransactionDate) as c1
FROM
	Transactions t

