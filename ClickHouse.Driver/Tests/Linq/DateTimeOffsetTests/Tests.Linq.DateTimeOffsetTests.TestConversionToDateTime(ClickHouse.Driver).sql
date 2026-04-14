-- ClickHouse.Driver ClickHouse

SELECT
	x.TransactionId,
	toDateTime64(x.TransactionDate, 7)
FROM
	DateTimeOffsetTable x
ORDER BY
	toDateTime64(x.TransactionDate, 7)

