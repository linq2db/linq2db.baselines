BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.TransactionId
FROM
	Transactions t
WHERE
	t.TransactionDate > toDateTime64('2020-02-29 20:34:55.1231234', 7)

