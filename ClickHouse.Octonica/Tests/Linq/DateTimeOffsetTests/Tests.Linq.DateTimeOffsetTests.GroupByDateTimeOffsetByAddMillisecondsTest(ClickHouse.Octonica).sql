-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(x.TransactionDate) + toInt64(toFloat64(-1000000))) as Key_1
		FROM
			Transactions x
	) t1
GROUP BY
	t1.Key_1
ORDER BY
	t1.Key_1

