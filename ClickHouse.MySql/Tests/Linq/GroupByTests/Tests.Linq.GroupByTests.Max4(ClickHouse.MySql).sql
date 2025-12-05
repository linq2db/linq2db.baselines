-- ClickHouse.MySql ClickHouse

SELECT
	t1.MoneyValue
FROM
	LinqDataTypes t1
		INNER JOIN (
			SELECT
				t2.ID as ID,
				MAX(t2.DateTimeValue) as c1
			FROM
				LinqDataTypes t2
			WHERE
				t2.ID = 1 AND t2.DateTimeValue <= toDateTime64('2020-02-29 00:00:00.000', 3)
			GROUP BY
				t2.ID
		) t2_1 ON t1.ID = t2_1.ID AND t1.DateTimeValue = t2_1.c1

