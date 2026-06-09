-- YDB Ydb

SELECT
	DateTime::GetWeekOfYearIso8601(t.TransactionDate) as c1
FROM
	Transactions t

