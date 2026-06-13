-- YDB Ydb

SELECT
	(DateTime::GetDayOfWeek(t.TransactionDate) % 7) + 1 as c1
FROM
	Transactions t

