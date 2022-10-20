BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Round(p.MoneyValue, toInt32(0)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 10)

