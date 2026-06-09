-- YDB Ydb

SELECT
	DateTime::GetDayOfYear(t.TransactionDate) as c1
FROM
	Transactions t

