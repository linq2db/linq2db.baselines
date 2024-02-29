BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Ceiling(negate(p.MoneyValue + toDecimal64('1', 10))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 10)

