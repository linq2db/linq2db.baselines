-- YDB Ydb

SELECT
	t.TransactionDate + DateTime::IntervalFromDays(-7) as Value_1
FROM
	Transactions t

