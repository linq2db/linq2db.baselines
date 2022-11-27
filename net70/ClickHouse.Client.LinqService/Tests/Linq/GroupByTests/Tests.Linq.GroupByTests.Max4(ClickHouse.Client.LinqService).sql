BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.MoneyValue
FROM
	LinqDataTypes t1
		INNER JOIN (
			SELECT
				sub.ID as ID,
				maxOrNull(sub.DateTimeValue) as DateTimeValue
			FROM
				LinqDataTypes sub
			WHERE
				sub.ID = toInt32(1) AND sub.DateTimeValue <= toDateTime64('2020-02-29 00:00:00.000', 3)
			GROUP BY
				sub.ID
		) t2 ON t1.ID = t2.ID AND t1.DateTimeValue = t2.DateTimeValue

