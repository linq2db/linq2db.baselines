BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Log(toFloat64(p.MoneyValue)) / Log(toFloat64(2))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0.10000000000000001)

