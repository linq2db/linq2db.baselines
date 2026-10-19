-- ClickHouse.MySql ClickHouse
SELECT
	toDate32(toString(d.TransactionDate))
FROM
	Transactions d
WHERE
	toDayOfMonth(toDate32(toString(d.TransactionDate))) > 0

