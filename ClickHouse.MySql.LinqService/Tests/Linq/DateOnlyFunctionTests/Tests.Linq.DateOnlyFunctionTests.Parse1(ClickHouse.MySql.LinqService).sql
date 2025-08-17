BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(concat('2010-01-', leftPadUTF8(toString(t.TransactionId), toUInt32(2), '0')))
FROM
	Transactions t
WHERE
	toDayOfMonth(toDate32(concat('2010-01-', leftPadUTF8(toString(t.TransactionId), toUInt32(2), '0')))) > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.TransactionId,
	t1.TransactionDate
FROM
	Transactions t1

