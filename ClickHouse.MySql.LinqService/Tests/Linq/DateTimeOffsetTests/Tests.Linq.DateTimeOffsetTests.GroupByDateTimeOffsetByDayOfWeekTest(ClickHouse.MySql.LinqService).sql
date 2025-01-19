BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			toDayOfWeek(addDays(x.TransactionDate, 1)) - 1 as Key_1
		FROM
			Transactions x
	) t1
GROUP BY
	t1.Key_1
ORDER BY
	t1.Key_1

