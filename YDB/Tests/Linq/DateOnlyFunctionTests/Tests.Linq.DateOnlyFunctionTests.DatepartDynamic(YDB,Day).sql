-- YDB Ydb

SELECT
	DateTime::GetDayOfMonth(t.TransactionDate) as c1
FROM
	Transactions t

