BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.TransactionId
FROM
	Transactions t
WHERE
	t.TransactionDate > addMinutes(toDateTime64('2020-02-29 17:14:55.1231234', 7), toFloat64(200))

