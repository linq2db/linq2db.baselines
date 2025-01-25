BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			toInt64((toUnixTimestamp64Nano(toDateTime64(x.TransactionDate, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(x.TransactionDate), 7))) / 100) as Key_1
		FROM
			Transactions x
	) t1
GROUP BY
	t1.Key_1
ORDER BY
	t1.Key_1

