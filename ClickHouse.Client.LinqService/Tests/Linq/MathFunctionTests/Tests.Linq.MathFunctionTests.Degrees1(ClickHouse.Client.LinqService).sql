BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Degrees(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal128('0.1', 10)

