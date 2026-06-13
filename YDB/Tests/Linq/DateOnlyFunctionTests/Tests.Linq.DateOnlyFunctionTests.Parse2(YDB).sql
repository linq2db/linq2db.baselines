-- YDB Ydb

SELECT
	d.TransactionDate as Day_1
FROM
	Transactions d
WHERE
	DateTime::GetDayOfMonth(d.TransactionDate) > 0

