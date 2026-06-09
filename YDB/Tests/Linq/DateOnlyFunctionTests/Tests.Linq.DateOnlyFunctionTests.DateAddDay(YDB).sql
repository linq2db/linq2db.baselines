-- YDB Ydb

SELECT
	t.TransactionDate + DateTime::IntervalFromDays(5) as Value_1
FROM
	Transactions t

