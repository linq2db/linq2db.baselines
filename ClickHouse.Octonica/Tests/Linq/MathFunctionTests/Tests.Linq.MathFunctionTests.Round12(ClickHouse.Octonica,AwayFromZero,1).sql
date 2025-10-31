-- ClickHouse.Octonica ClickHouse

SELECT
	t.MoneyValue
FROM
	(
		SELECT
			ROUND(p.MoneyValue, 1) as c1,
			p.MoneyValue as MoneyValue
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 4) AND t.c1 <> toDecimal64('7', 4)

