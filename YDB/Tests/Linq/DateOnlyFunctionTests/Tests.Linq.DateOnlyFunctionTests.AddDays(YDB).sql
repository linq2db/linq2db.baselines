-- YDB Ydb

SELECT
	t.TransactionDate + DateTime::IntervalFromDays(5) as c1
FROM
	Transactions t

