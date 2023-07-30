BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1_1.MoneyValue
FROM
	LinqDataTypes t1_1
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
		) t1 ON t1_1.ID = t1.ID AND t1_1.DateTimeValue = t1.DateTimeValue

