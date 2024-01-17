BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Round(p.MoneyValue, toInt32(1)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 10) AND t.c1 <> toDecimal64('7', 10)

