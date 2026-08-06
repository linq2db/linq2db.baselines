-- YDB Ydb
SELECT
	d.TransactionDate as TransactionDate
FROM
	Transactions d
WHERE
	DateTime::GetDayOfMonth(d.TransactionDate) > 0

