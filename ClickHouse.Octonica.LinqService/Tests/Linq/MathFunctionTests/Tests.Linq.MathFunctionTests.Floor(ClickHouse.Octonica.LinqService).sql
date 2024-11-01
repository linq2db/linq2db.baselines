BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(negate(p.MoneyValue + toDecimal64('1', 4))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal128('0', 10)

