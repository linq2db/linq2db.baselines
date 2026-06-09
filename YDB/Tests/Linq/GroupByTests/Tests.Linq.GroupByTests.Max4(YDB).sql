-- YDB Ydb

SELECT
	t1_1.MoneyValue as MoneyValue
FROM
	LinqDataTypes t1_1
		INNER JOIN (
			SELECT
				t2.ID as ID,
				MAX(t2.DateTimeValue) as c1
			FROM
				LinqDataTypes t2
			WHERE
				t2.ID = 1 AND t2.DateTimeValue <= Timestamp('2020-02-29T00:00:00.000000Z')
			GROUP BY
				t2.ID
		) t1 ON t1_1.ID = t1.ID AND t1_1.DateTimeValue = t1.c1

