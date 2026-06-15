-- YDB Ydb

SELECT
	DateTime::GetYear(t.TransactionDate) as c1
FROM
	Transactions t

