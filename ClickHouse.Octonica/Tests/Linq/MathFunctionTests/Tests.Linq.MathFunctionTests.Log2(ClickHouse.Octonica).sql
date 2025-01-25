BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Log(toFloat64(t.MoneyValue)) / Log(toFloat64(2))) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toFloat64(0.10000000000000001)

